#!/usr/bin/env bash

src_dir="$(realpath -e "$(dirname "$0")")"  &&
tmp_dir="$(mktemp -dp /tmp build.XXXXXXXX)" &&
{
	pushd "$tmp_dir" 2>&1 >/dev/null &&
	{
		meson --buildtype release    \
		      --optimization 3       \
		      --prefix / --bindir '' \
		      --strip "$src_dir"     &&
		meson compile -j$(nproc) -v  &&
		meson install --destdir "$src_dir"
		popd 2>&1 >/dev/null
	}
	rm -fr "$tmp_dir/"
}

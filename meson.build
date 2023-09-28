project('memorylatency', 'c',
  version : '0.3.2',
  license : 'Apache-2.0',
  default_options : ['warning_level=3'])

default_cflags = [
  '-O3',
  '-march=znver3',
  '-mtune=znver3',
  '-flto',
  '-fuse-linker-plugin',
  '-DNDEBUG=1',
  '-Dver="' + meson.project_version() + '"',
  '-Darch="' + host_machine.cpu() + '"',
  '-Dplat="' + host_machine.system() + '"'
  ]

subdir('src')

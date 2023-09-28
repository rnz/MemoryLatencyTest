sources = ['memorylatency.c']

if (host_machine.cpu_family() == 'x86_64')
    sources += 'memorylatency-x86_64.s'
elif (host_machine.cpu_family() == 'x86')
    sources += 'memorylatency-x86.s'
endif

executable('memorylatency-' + host_machine.cpu(),
           sources,
           c_args: default_cflags,
           link_args: ['-lm', '-O3', '-march=znver3', '-mtune=znver3', '-flto', '-fuse-linker-plugin', '-DNDEBUG=1'],
           install : true)

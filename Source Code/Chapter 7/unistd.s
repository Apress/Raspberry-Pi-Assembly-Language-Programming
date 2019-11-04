@
@ Defines for the Linux system calls.
@ This list is from Raspbian Buster
@

.EQU sys_restart_syscall,		0	@ restart a system call after interruption by a stop signal
.EQU sys_exit,				1	@ cause normal process termination
.EQU sys_fork,				2	@ create a child process
.EQU sys_read,				3	@ read from a file descriptor
.EQU sys_write,				4	@ write to a file descriptor
.EQU sys_open,				5	@ open and possibly create a file
.EQU sys_close,				6	@ close a file descriptor
.EQU sys_creat,				8	@ create a new file or rewrite an existing one
.EQU sys_link,				9	@ make a new name for a file
.EQU sys_unlink,			10	@ delete a name and possibly the file it refers to
.EQU sys_execve,			11	@ execute program
.EQU sys_chdir,				12	@ change working directory
.EQU sys_mknod,				14	@ create a special or ordinary file
.EQU sys_chmod,				15	@ change file mode bits
.EQU sys_lchown,			16	@ change the owner and group of a symbolic link
.EQU sys_lseek,				19	@ reposition read/write file offset
.EQU sys_getpid,			20	@ get process identification
.EQU sys_mount,				21	@ mount filesystem
.EQU sys_setuid,			23	@ set user identity
.EQU sys_getuid,			24	@ get user identity
.EQU sys_ptrace,			26	@ process trace
.EQU sys_pause,				29	@ wait for signal
.EQU sys_access,			33	@ check user's permissions for a file
.EQU sys_nice,				34	@ change process priority
.EQU sys_sync,				36	@ commit filesystem caches to disk
.EQU sys_kill,				37	@ send signal to a process
.EQU sys_rename,			38	@ change the name or location of a file
.EQU sys_mkdir,				39	@ create a directory
.EQU sys_rmdir,				40	@ delete a directory
.EQU sys_dup,				41	@ duplicate a file descriptor
.EQU sys_pipe,				42	@ create pipe
.EQU sys_times,				43	@ get process times
.EQU sys_brk,				45	@ change data segment size
.EQU sys_setgid,			46	@ set group identity
.EQU sys_getgid,			47	@ get group identity
.EQU sys_geteuid,			49	@ get user identity
.EQU sys_getegid,			50	@ get group identity
.EQU sys_acct,				51	@ switch process accounting on or off
.EQU sys_umount2,			52	@ unmount filesystem
.EQU sys_ioctl,				54	@ control device
.EQU sys_fcntl,				55	@ manipulate file descriptor
.EQU sys_setpgid,			57	@ set process group
.EQU sys_umask,				60	@ set file mode creation mask
.EQU sys_chroot,			61	@ change root directory
.EQU sys_ustat,				62	@ get filesystem statistics
.EQU sys_dup2,				63	@ duplicate a file descriptor
.EQU sys_getppid,			64	@ get the parent process ID
.EQU sys_getpgrp,			65	@ get process group
.EQU sys_setsid,			66	@ creates a session and sets the process group ID
.EQU sys_sigaction,			67	@ examine and change a signal action
.EQU sys_setreuid,			70	@ set real and/or effective user ID
.EQU sys_setregid,			71	@ set real and/or effective group ID
.EQU sys_sigsuspend,			72	@ wait for a signal
.EQU sys_sigpending,			73	@ examine pending signals
.EQU sys_sethostname,			74	@ set hostname
.EQU sys_setrlimit,			75	@ control maximum resource consumption
.EQU sys_getrusage,			77	@ get resource usage
.EQU sys_gettimeofday,			78	@ get time
.EQU sys_settimeofday,			79	@ set time
.EQU sys_getgroups,			80	@ get list of supplementary group IDs
.EQU sys_setgroups,			81	@ set list of supplementary group IDs
.EQU sys_symlink,			83	@ make a new name for a file
.EQU sys_readlink,			85	@ read value of a symbolic link
.EQU sys_uselib,			86	@load shared library
.EQU sys_swapon,			87	@ start swapping to file/device
.EQU sys_reboot,			88	@ reboot
.EQU sys_munmap,			91	@ unmap files or devices into memory
.EQU sys_truncate,			92	@ truncate a file to a specified length
.EQU sys_ftruncate,			93	@ truncate a file to a specified length
.EQU sys_fchmod,			94	@ change permissions of a file
.EQU sys_fchown,			95	@ change ownership of a file
.EQU sys_getpriority,			96	@ get program scheduling priority
.EQU sys_setpriority,			97	@ set program scheduling priority
.EQU sys_statfs,			99	@ get filesystem statistics
.EQU sys_fstatfs,			100	@ get filesystem statistics
.EQU sys_syslog,			103	@ read and/or clear kernel message ring buffer; set console_loglevel
.EQU sys_setitimer,			104	@ set value of an interval timer
.EQU sys_getitimer,			105	@ get value of an interval timer
.EQU sys_stat,				106	@ get file status
.EQU sys_lstat,				107	@ get file status
.EQU sys_fstat,				108	@ get file status
.EQU sys_vhangup,			111	@ virtually hangup the current terminal
.EQU sys_wait4,				114	@ wait for process to change state, BSD style
.EQU sys_swapoff,			115	@ stop swapping to file/device
.EQU sys_sysinfo,			116	@ return system information
.EQU sys_fsync,				118	@ synchronize a file's in-core state with storage
.EQU sys_sigreturn,			119	@ return  from  signal handler and cleanup stack frame
.EQU sys_clone,				120	@ create a child process
.EQU sys_setdomainname,			121	@ set NIS domain name
.EQU sys_uname,				122	@ get name and information about current kernel
.EQU sys_adjtimex,			124	@ tune kernel clock
.EQU sys_mprotect,			125	@ set protection on a region of memory
.EQU sys_sigprocmask,			126	@ examine and change blocked signals
.EQU sys_init_module,			128	@ load a kernel module
.EQU sys_delete_module,			129	@ unload a kernel module
.EQU sys_quotactl,			131	@ manipulate disk quotas
.EQU sys_getpgid,			132	@ get process group
.EQU sys_fchdir,			133	@ change working directory
.EQU sys_bdflush,			134	@ start, flush, or tune buffer-dirty-flush daemon
.EQU sys_sysfs,				135	@ get filesystem type information
.EQU sys_personality,			136	@ set the process execution domain
.EQU sys_setfsuid,			138	@ set user identity used for filesystem checks
.EQU sys_setfsgid,			139	@ set group identity used for filesystem checks
.EQU sys__llseek,			140	@ reposition read/write file offset
.EQU sys_getdents,			141	@ get directory entries
.EQU sys__newselect,			142	@ synchronous I/O multiplexing
.EQU sys_flock,				143	@ apply or remove an advisory lock on an open file
.EQU sys_msync,				144	@ synchronize a file with a memory map
.EQU sys_readv,				145	@ read data into multiple buffers
.EQU sys_writev,			146	@ write data into multiple buffers
.EQU sys_getsid,			147	@ get session ID
.EQU sys_fdatasync,			148	@ synchronize a file's in-core state with storage device
.EQU sys__sysctl,			149	@ read/write system parameters
.EQU sys_mlock,				150	@ lock memory
.EQU sys_munlock,			151	@ unlock memory
.EQU sys_mlockall,			152	@ lock memory
.EQU sys_munlockall,			153	@ unlock memory
.EQU sys_sched_setparam,		154	@ set scheduling parameters
.EQU sys_sched_getparam,		155	@ get scheduling parameters
.EQU sys_sched_setscheduler,		156	@ set and get scheduling policy/parameters
.EQU sys_sched_getscheduler,		157	@ set and get scheduling policy/parameters
.EQU sys_sched_yield,			158	@ yield the processor
.EQU sys_sched_get_priority_max,	159	@ get static priority max
.EQU sys_sched_get_priority_min,	160	@ get static priority min
.EQU sys_sched_rr_get_interval,		161	@ get  the  SCHED_RR  interval  for the named process
.EQU sys_nanosleep,			162	@ high-resolution sleep
.EQU sys_mremap,			163	@ remap a virtual memory address
.EQU sys_setresuid,			164	@ set real, effective and saved user ID
.EQU sys_getresuid,			165	@ get real, effective and saved user ID
.EQU sys_poll,				168	@ wait for some event on a file descriptor
.EQU sys_nfsservctl,			169	@ syscall interface to kernel nfs daemon
.EQU sys_setresgid,			170	@ set real, effective and saved group ID
.EQU sys_getresgid,			171	@ get real, effective and saved group ID
.EQU sys_prctl,				172	@ operations on a process
.EQU sys_rt_sigreturn,			173	@ return  from  signal handler and cleanup stack frame
.EQU sys_rt_sigaction,			174	@ examine and change a signal action
.EQU sys_rt_sigprocmask,		175	@ examine and change blocked signals
.EQU sys_rt_sigpending,			176	@ examine pending signals
.EQU sys_rt_sigtimedwait,		177	@ synchronously wait for queued signals
.EQU sys_rt_sigqueueinfo,		178	@ queue a signal and data
.EQU sys_rt_sigsuspend,			179	@ wait for a signal
.EQU sys_pread64,			180	@ read from a file descriptor at a given offset
.EQU sys_pwrite64,			181	@ write to a file descriptor at a given offset
.EQU sys_chown,				182	@ change ownership of a file
.EQU sys_getcwd,			183	@ get current working directory
.EQU sys_capget,			184	@ get capabilities of thread(s)
.EQU sys_capset,			185	@ set capabilities of thread(s)
.EQU sys_sigaltstack,			186	@ set and/or get signal stack context
.EQU sys_sendfile,			187	@ transfer data between file descriptors
.EQU sys_vfork,				190	@ create a child process and block parent
.EQU sys_ugetrlimit,			191	@ get resource limits
.EQU sys_mmap2,				192	@ map files or devices into memory
.EQU sys_truncate64,			193	@ truncate a file to a specified length
.EQU sys_ftruncate64,			194	@ truncate a file to a specified length
.EQU sys_stat64,			195	@ get file status
.EQU sys_lstat64,			196	@ get file status
.EQU sys_fstat64,			197	@ get file status
.EQU sys_lchown32,			198	@ change ownership of a file
.EQU sys_getuid32,			199	@ get user identity
.EQU sys_getgid32,			200	@ get group identity
.EQU sys_geteuid32,			201	@ get user identity
.EQU sys_getegid32,			202	@ get group identity
.EQU sys_setreuid32,			203	@ set real and/or effective user ID
.EQU sys_setregid32,			204	@ set real and/or effective group ID
.EQU sys_getgroups32,			205	@ get list of supplementary group IDs
.EQU sys_setgroups32,			206	@ set list of supplementary group IDs
.EQU sys_fchown32,			207	@ change ownership of a file
.EQU sys_setresuid32,			208	@ set real, effective and saved user ID
.EQU sys_getresuid32,			209	@ get real, effective and saved user ID
.EQU sys_setresgid32,			210	@ set real, effective and saved group ID
.EQU sys_getresgid32,			211	@ get real, effective and saved group ID
.EQU sys_chown32,			212	@ change ownership of a file
.EQU sys_setuid32,			213	@ set user identity
.EQU sys_setgid32,			214	@ set group identity
.EQU sys_setfsuid32,			215	@ set user identity used for filesystem checks
.EQU sys_setfsgid32,			216	@ set group identity used for filesystem checks
.EQU sys_getdents64,			217	@ get directory entries
.EQU sys_pivot_root,			218	@ change the root filesystem
.EQU sys_mincore,			219	@ determine whether pages are resident in memory
.EQU sys_madvise,			220	@ give advice about use of memory
.EQU sys_fcntl64,			221	@ manipulate file descriptor
.EQU sys_gettid,			224	@ get thread identification
.EQU sys_readahead,			225	@ initiate file readahead into page cache
.EQU sys_setxattr,			226	@ set an extended attribute value
.EQU sys_lsetxattr,			227	@ set an extended attribute value
.EQU sys_fsetxattr,			228	@ set an extended attribute value
.EQU sys_getxattr,			229	@ retrieve an extended attribute value
.EQU sys_lgetxattr,			230	@ retrieve an extended attribute value
.EQU sys_fgetxattr,			231	@ retrieve an extended attribute value
.EQU sys_listxattr,			232	@ list extended attribute names
.EQU sys_llistxattr,			233	@ list extended attribute names
.EQU sys_flistxattr,			234	@ list extended attribute names
.EQU sys_removexattr,			235	@ remove  an  extended attribute
.EQU sys_lremovexattr,			236	@ remove  an  extended attribute
.EQU sys_fremovexattr,			237	@ remove  an  extended attribute
.EQU sys_tkill,				238	@ send a signal to a thread
.EQU sys_sendfile64,			239	@ transfer data between file descriptors
.EQU sys_futex,				240	@ fast user-space locking
.EQU sys_sched_setaffinity,		241	@ set a thread's CPU affinity mask
.EQU sys_sched_getaffinity,		242	@ get a thread's CPU affinity mask
.EQU sys_io_setup,			243	@ create an asynchronous I/O context
.EQU sys_io_destroy,			244	@ destroy an asynchronous I/O context
.EQU sys_io_getevents,			245	@ read asynchronous I/O events from the completion queue
.EQU sys_io_submit,			246	@ submit asynchronous I/O blocks for processing
.EQU sys_io_cancel,			247	@ cancel an outstanding asynchronous I/O operation
.EQU sys_exit_group,			248	@ exit all threads in a process
.EQU sys_lookup_dcookie,		249	@ return a directory entry's path
.EQU sys_epoll_create,			250	@ open an epoll file descriptor
.EQU sys_epoll_ctl,			251	@ control interface for an epoll file descriptor
.EQU sys_epoll_wait,			252	@ wait  for  an I/O event on an epoll file descriptor
.EQU sys_remap_file_pages,		253	@ create a nonlinear file mapping
.EQU sys_set_tid_address,		256	@ set pointer to thread ID
.EQU sys_timer_create,			257	@ create a POSIX per-process timer
.EQU sys_timer_settime,			258	@arm/disarm state of POSIX per-process timer
.EQU sys_timer_gettime,			259	@ fetch state of POSIX per-process timer
.EQU sys_timer_getoverrun,		260	@ get overrun count for a POSIX per-process timer
.EQU sys_timer_delete,			261	@ delete a POSIX per-process timer
.EQU sys_clock_settime,			262	@ clock and timer functions
.EQU sys_clock_gettime,			263	@ clock and timer functions
.EQU sys_clock_getres,			264	@ clock and timer functions
.EQU sys_clock_nanosleep,		265	@ high-resolution sleep with specifiable clock
.EQU sys_statfs64,			266	@ get filesystem statistics
.EQU sys_fstatfs64,			267	@ get filesystem statistics
.EQU sys_tgkill,			268	@ send a signal to a thread
.EQU sys_utimes,			269	@ change file last access and modification times
.EQU sys_arm_fadvise64_64,		270	@ predeclare an access pattern for file data
.EQU sys_pciconfig_iobase,		271	@ pci device information handling
.EQU sys_pciconfig_read,		272	@ pci device information handling
.EQU sys_pciconfig_write,		273	@ pci device information handling
.EQU sys_mq_open,			274	@ open a message queue
.EQU sys_mq_unlink,			275	@ remove a message queue
.EQU sys_mq_timedsend,			276	@ send a message to a message queue
.EQU sys_mq_timedreceive,		277	@ receive a message from a message queue
.EQU sys_mq_notify,			278	@ register for notification when a message is available
.EQU sys_mq_getsetattr,			279	@ get/set message queue attributes
.EQU sys_waitid,			280	@ wait for a child process to change state
.EQU sys_socket,			281	@ create an endpoint for communication
.EQU sys_bind,				282	@ bind a name to a socket
.EQU sys_connect,			283	@ initiate a connection on a socket
.EQU sys_listen,			284	@ listen for connections on a socket
.EQU sys_accept,			285	@ accept a connection on a socket
.EQU sys_getsockname,			286	@ get socket name
.EQU sys_getpeername,			287	@ get name of connected peer socket
.EQU sys_socketpair,			288	@ create a pair of connected sockets
.EQU sys_send,				289	@ send a message on a socket
.EQU sys_sendto,			290	@ send a message on a socket
.EQU sys_recv,				291	@ receive a message from a socket
.EQU sys_recvfrom,			292	@ receive a message from a socket
.EQU sys_shutdown,			293	@ shut down part of a full-duplex connection
.EQU sys_setsockopt,			294	@ set options on sockets
.EQU sys_getsockopt,			295	@ get options on sockets
.EQU sys_sendmsg,			296	@ send a message on a socket using a message structure
.EQU sys_recvmsg,			297	@ receive a message from a socket
.EQU sys_semop,				298	@ System V semaphore operations
.EQU sys_semget,			299	@ get a System V semaphore set identifier
.EQU sys_semctl,			300	@ System V semaphore control operations
.EQU sys_msgsnd,			301	@ XSI message send operation
.EQU sys_msgrcv,			302	@ XSI message receive operation
.EQU sys_msgget,			303	@ get a System V message queue identifier
.EQU sys_msgctl,			304	@ System V message control operations
.EQU sys_shmat,				305	@ XSI shared memory attach operation
.EQU sys_shmdt,				306	@ XSI shared memory detach operation
.EQU sys_shmget,			307	@ allocates a System V shared memory segment
.EQU sys_shmctl,			308	@ System V shared memory control
.EQU sys_add_key,			309	@ add a key to the kernel's key management facility
.EQU sys_request_key,			310	@ request a key from the kernel's key management facility
.EQU sys_keyctl,			311	@ manipulate the kernel's key management facility
.EQU sys_semtimedop,			312	@ System V semaphore operations
.EQU sys_vserver,			313	@ Unimplemented
.EQU sys_ioprio_set,			314	@ set I/O scheduling class and priority
.EQU sys_ioprio_get,			315	@ get I/O scheduling class and priority
.EQU sys_inotify_init,			316	@ initialize an inotify instance
.EQU sys_inotify_add_watch,		317	@ add a watch to an initialized inotify instance
.EQU sys_inotify_rm_watch,		318	@ remove an existing watch from an inotify instance
.EQU sys_mbind,				319	@ set memory policy for a memory range
.EQU sys_get_mempolicy,			320	@ retrieve NUMA memory policy for a thread
.EQU sys_set_mempolicy,			321	@ set default NUMA memory policy for a thread and its children
.EQU sys_openat,			322	@ open file relative to directory file descriptor
.EQU sys_mkdirat,			323	@ create a directory
.EQU sys_mknodat,			324	@ create a special or ordinary file
.EQU sys_fchownat,			325	@ change owner and group of a file relative to directory file descriptor
.EQU sys_futimesat,			326	@ change timestamps of a file relative to a directory file descriptor
.EQU sys_fstatat64,			327	@ get file status
.EQU sys_unlinkat,			328	@ delete a name and possibly the file it refers to
.EQU sys_renameat,			329	@ change the name or location of a file
.EQU sys_linkat,			330	@ make a new name for a file
.EQU sys_symlinkat,			331	@ make a new name for a file
.EQU sys_readlinkat,			332	@ read value of a symbolic link
.EQU sys_fchmodat,			333	@ change permissions of a file
.EQU sys_faccessat,			334	@ determine accessibility of a file relative to directory file descriptor
.EQU sys_pselect6,			335	@ synchronous I/O multiplexing
.EQU sys_ppoll,				336	@ wait for some event on a file descriptor
.EQU sys_unshare,			337	@ run program with some namespaces unshared from parent
.EQU sys_set_robust_list,		338	@ set list of robust futexes
.EQU sys_get_robust_list,		339	@ get list of robust futexes
.EQU sys_splice,			340	@ splice data to/from a pipe
.EQU sys_arm_sync_file_range,		341	@ sync a file segment with disk
.EQU sys_tee,				342	@ duplicating pipe content
.EQU sys_vmsplice,			343	@ splice user pages to/from a pipe
.EQU sys_move_pages,			344	@ move individual pages of a process to another node
.EQU sys_getcpu,			345	@ determine CPU and NUMA node on which the calling thread is running
.EQU sys_epoll_pwait,			346	@ wait  for  an I/O event on an epoll file descriptor
.EQU sys_kexec_load,			347	@ load a new kernel for later execution
.EQU sys_utimensat,			348	@ change file timestamps with nanosecond precision
.EQU sys_signalfd,			349	@ create a file descriptor for accepting signals
.EQU sys_timerfd_create,		350	@ timers that notify via file descriptors
.EQU sys_eventfd,			351	@ create a file descriptor for event notification
.EQU sys_fallocate,			352	@ manipulate file space
.EQU sys_timerfd_settime,		353	@ timers that notify via file descriptors
.EQU sys_timerfd_gettime,		354	@ timers that notify via file descriptors
.EQU sys_signalfd4,			355	@ create a file descriptor for accepting signals
.EQU sys_eventfd2,			356	@ create a file descriptor for event notification
.EQU sys_epoll_create1,			357	@ open an epoll file descriptor
.EQU sys_dup3,				358	@ duplicate a file descriptor
.EQU sys_pipe2,				359	@ create pipe
.EQU sys_inotify_init1,			360	@ initialize an inotify instance
.EQU sys_preadv,			361	@ read data into multiple buffers
.EQU sys_pwritev,			362	@ write data into multiple buffers
.EQU sys_rt_tgsigqueueinfo,		363	@ queue a signal and data
.EQU sys_perf_event_open,		364	@ set up performance monitoring
.EQU sys_recvmmsg,			365	@ receive multiple messages on a socket
.EQU sys_accept4,			366	@ accept a connection on a socket
.EQU sys_fanotify_init,			367	@ create and initialize fanotify group
.EQU sys_fanotify_mark,			368	@ add, remove, or modify an fanotify mark on a filesystem object
.EQU sys_prlimit64,			369	@ get/set resource limits
.EQU sys_name_to_handle_at,		370	@ obtain handle for a pathname
.EQU sys_open_by_handle_at,		371	@ open file via a handle
.EQU sys_clock_adjtime,			372	@ tune kernel clock
.EQU sys_syncfs,			373	@ commit filesystem caches to disk
.EQU sys_sendmmsg,			374	@ send multiple messages on a socket
.EQU sys_setns,				375	@ reassociate thread with a namespace
.EQU sys_process_vm_readv,		376	@ transfer data between process address spaces
.EQU sys_process_vm_writev,		377	@ transfer data between process address spaces
.EQU sys_kcmp,				378	@ compare  two  processes  to determine if they share a kernel resource
.EQU sys_finit_module,			379	@ load a kernel module
.EQU sys_sched_setattr,			380	@ set scheduling policy and attributes
.EQU sys_sched_getattr,			381	@ get scheduling policy and attributes
.EQU sys_renameat2,			382	@ change the name or location of a file
.EQU sys_seccomp,			383	@ operate on Secure Computing state of the process
.EQU sys_getrandom,			384	@ obtain a series of random bytes
.EQU sys_memfd_create,			385	@ create an anonymous file
.EQU sys_bpf,				386	@ perform a command on an extended BPF map or program
.EQU sys_execveat,			387	@ execute program relative to a directory file descriptor
.EQU sys_userfaultfd,			388	@ create  a file descriptor for handling page faults in user space
.EQU sys_membarrier,			389	@ issue memory barriers on a set of threads
.EQU sys_mlock2,			390	@ lock memory
.EQU sys_copy_file_range,		391	@ Copy a range of data from one file to another
.EQU sys_preadv2,			392	@ read data into multiple buffers
.EQU sys_pwritev2,			393	@ write data into multiple buffers
.EQU sys_pkey_mprotect,			394	@ set protection on a region of memory
.EQU sys_pkey_alloc,			395	@ allocate a protection key
.EQU sys_pkey_free,			396	@ free a protection key
.EQU sys_statx,				397	@ get file status (extended)
.EQU sys_rseq,				398	@ restartable sequences

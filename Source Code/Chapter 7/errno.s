@
@ Assembler version of the C errno.h files.
@ All the Linux error codes for the Raspbian Buster release.
@

.EQU	EPERM,		 1	@ Operation not permitted 
.EQU	ENOENT,		 2	@ No such file or directory 
.EQU	ESRCH,		 3	@ No such process 
.EQU	EINTR,		 4	@ Interrupted system call 
.EQU	EIO,		 5	@ I/O error 
.EQU	ENXIO,		 6	@ No such device or address 
.EQU	E2BIG,		 7	@ Argument list too long 
.EQU	ENOEXEC,	 8	@ Exec format error 
.EQU	EBADF,		 9	@ Bad file number 
.EQU	ECHILD,		10	@ No child processes 
.EQU	EAGAIN,		11	@ Try again 
.EQU	ENOMEM,		12	@ Out of memory 
.EQU	EACCES,		13	@ Permission denied 
.EQU	EFAULT,		14	@ Bad address 
.EQU	ENOTBLK,	15	@ Block device required 
.EQU	EBUSY,		16	@ Device or resource busy 
.EQU	EEXIST,		17	@ File exists 
.EQU	EXDEV,		18	@ Cross-device link 
.EQU	ENODEV,		19	@ No such device 
.EQU	ENOTDIR,	20	@ Not a directory 
.EQU	EISDIR,		21	@ Is a directory 
.EQU	EINVAL,		22	@ Invalid argument 
.EQU	ENFILE,		23	@ File table overflow 
.EQU	EMFILE,		24	@ Too many open files 
.EQU	ENOTTY,		25	@ Not a typewriter 
.EQU	ETXTBSY,	26	@ Text file busy 
.EQU	EFBIG,		27	@ File too large 
.EQU	ENOSPC,		28	@ No space left on device 
.EQU	ESPIPE,		29	@ Illegal seek 
.EQU	EROFS,		30	@ Read-only file system 
.EQU	EMLINK,		31	@ Too many links 
.EQU	EPIPE,		32	@ Broken pipe 
.EQU	EDOM,		33	@ Math argument out of domain of func 
.EQU	ERANGE,		34	@ Math result not representable 
.EQU	EDEADLK,	35	@ Resource deadlock would occur 
.EQU	ENAMETOOLONG, 36	@ File name too long 
.EQU	ENOLCK,		37	@ No record locks available  
.EQU	ENOSYS,		38	@ Invalid system call number 
.EQU	ENOTEMPTY,	39	@ Directory not empty 
.EQU	ELOOP,		40	@ Too many symbolic links encountered 
.EQU	ENOMSG,		42	@ No message of desired type 
.EQU	EIDRM,		43	@ Identifier removed 
.EQU	ECHRNG,		44	@ Channel number out of range 
.EQU	EL2NSYNC,	45	@ Level 2 not synchronized 
.EQU	EL3HLT,		46	@ Level 3 halted 
.EQU	EL3RST,		47	@ Level 3 reset 
.EQU	ELNRNG,		48	@ Link number out of range 
.EQU	EUNATCH,	49	@ Protocol driver not attached 
.EQU	ENOCSI,		50	@ No CSI structure available 
.EQU	EL2HLT,		51	@ Level 2 halted 
.EQU	EBADE,		52	@ Invalid exchange 
.EQU	EBADR,		53	@ Invalid request descriptor 
.EQU	EXFULL,		54	@ Exchange full 
.EQU	ENOANO,		55	@ No anode 
.EQU	EBADRQC,	56	@ Invalid request code 
.EQU	EBADSLT,	57	@ Invalid slot 
.EQU	EBFONT,		59	@ Bad font file format 
.EQU	ENOSTR,		60	@ Device not a stream 
.EQU	ENODATA,	61	@ No data available 
.EQU	ETIME,		62	@ Timer expired 
.EQU	ENOSR,		63	@ Out of streams resources 
.EQU	ENONET,		64	@ Machine is not on the network 
.EQU	ENOPKG,		65	@ Package not installed 
.EQU	EREMOTE,	66	@ Object is remote 
.EQU	ENOLINK,	67	@ Link has been severed 
.EQU	EADV,		68	@ Advertise error 
.EQU	ESRMNT,		69	@ Srmount error 
.EQU	ECOMM,		70	@ Communication error on send 
.EQU	EPROTO,		71	@ Protocol error 
.EQU	EMULTIHOP,	72	@ Multihop attempted 
.EQU	EDOTDOT,	73	@ RFS specific error 
.EQU	EBADMSG,	74	@ Not a data message 
.EQU	EOVERFLOW,	75	@ Value too large for defined data type 
.EQU	ENOTUNIQ,	76	@ Name not unique on network 
.EQU	EBADFD,		77	@ File descriptor in bad state 
.EQU	EREMCHG,	78	@ Remote address changed 
.EQU	ELIBACC,	79	@ Can not access a needed shared library 
.EQU	ELIBBAD,	80	@ Accessing a corrupted shared library 
.EQU	ELIBSCN,	81	@ .lib section in a.out corrupted 
.EQU	ELIBMAX,	82	@ Attempting to link in too many shared libraries 
.EQU	ELIBEXEC,	83	@ Cannot exec a shared library directly 
.EQU	EILSEQ,		84	@ Illegal byte sequence 
.EQU	ERESTART,	85	@ Interrupted system call should be restarted 
.EQU	ESTRPIPE,	86	@ Streams pipe error 
.EQU	EUSERS,		87	@ Too many users 
.EQU	ENOTSOCK,	88	@ Socket operation on non-socket 
.EQU	EDESTADDRREQ,	89	@ Destination address required 
.EQU	EMSGSIZE,	90	@ Message too long 
.EQU	EPROTOTYPE,	91	@ Protocol wrong type for socket 
.EQU	ENOPROTOOPT,92	@ Protocol not available 
.EQU	EPROTONOSUPPORT,	93	@ Protocol not supported 
.EQU	ESOCKTNOSUPPORT,	94	@ Socket type not supported 
.EQU	EOPNOTSUPP,	95	@ Operation not supported on transport endpoint 
.EQU	EPFNOSUPPORT,	96	@ Protocol family not supported 
.EQU	EAFNOSUPPORT,	97	@ Address family not supported by protocol 
.EQU	EADDRINUSE,	98	@ Address already in use 
.EQU	EADDRNOTAVAIL,	99	@ Cannot assign requested address 
.EQU	ENETDOWN,	100	@ Network is down 
.EQU	ENETUNREACH,101	@ Network is unreachable 
.EQU	ENETRESET,	102	@ Network dropped connection because of reset 
.EQU	ECONNABORTED,	103	@ Software caused connection abort 
.EQU	ECONNRESET,	104	@ Connection reset by peer 
.EQU	ENOBUFS,	105	@ No buffer space available 
.EQU	EISCONN,	106	@ Transport endpoint is already connected 
.EQU	ENOTCONN,	107	@ Transport endpoint is not connected 
.EQU	ESHUTDOWN,	108	@ Cannot send after transport endpoint shutdown 
.EQU	ETOOMANYREFS,	109	@ Too many references: cannot splice 
.EQU	ETIMEDOUT,	110	@ Connection timed out 
.EQU	ECONNREFUSED,	111	@ Connection refused 
.EQU	EHOSTDOWN,	112	@ Host is down 
.EQU	EHOSTUNREACH,	113	@ No route to host 
.EQU	EALREADY,	114	@ Operation already in progress 
.EQU	EINPROGRESS,115	@ Operation now in progress 
.EQU	ESTALE,		116	@ Stale file handle 
.EQU	EUCLEAN,	117	@ Structure needs cleaning 
.EQU	ENOTNAM,	118	@ Not a XENIX named type file 
.EQU	ENAVAIL,	119	@ No XENIX semaphores available 
.EQU	EISNAM,		120	@ Is a named type file 
.EQU	EREMOTEIO,	121	@ Remote I/O error 
.EQU	EDQUOT,		122	@ Quota exceeded 
.EQU	ENOMEDIUM,	123	@ No medium found 
.EQU	EMEDIUMTYPE,124	@ Wrong medium type 
.EQU	ECANCELED,	125	@ Operation Canceled 
.EQU	ENOKEY,		126	@ Required key not available 
.EQU	EKEYEXPIRED,127	@ Key has expired 
.EQU	EKEYREVOKED,128	@ Key has been revoked 
.EQU	EKEYREJECTED,	129	@ Key was rejected by service 
.EQU	EOWNERDEAD,	130	@ Owner died 
.EQU	ENOTRECOVERABLE,	131	@ State not recoverable 
.EQU	ERFKILL,	132	@ Operation not possible due to RF-kill 
.EQU	EHWPOISON,	133	@ Memory page has hardware error 


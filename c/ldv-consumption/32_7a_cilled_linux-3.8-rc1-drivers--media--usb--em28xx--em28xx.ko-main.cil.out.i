extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __u32 nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct net_device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6298_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6298_31 ldv_6298 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct __anonstruct_seqlock_t_35 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_13181_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13183_128 {
   struct __anonstruct_ldv_13181_129 ldv_13181 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13183_128 ldv_13183 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct cred;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13961_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13961_134 ldv_13961 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[16U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_dev_node {
   void *handle ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_17637_138 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_17639_137 {
   struct __anonstruct_ldv_17637_138 ldv_17637 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_17639_137 ldv_17639 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_139 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_139 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_18659_141 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_18659_141 ldv_18659 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct writeback_control;
union __anonunion_arg_143 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_142 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_143 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_142 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_19095_144 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_19115_145 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_19131_146 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_19095_144 ldv_19095 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_19115_145 ldv_19115 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_19131_146 ldv_19131 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_147 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_147 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_149 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_148 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_149 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_148 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion_ldv_21221_151 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_21231_155 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_21233_154 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_21231_155 ldv_21231 ;
   int units ;
};
struct __anonstruct_ldv_21235_153 {
   union __anonunion_ldv_21233_154 ldv_21233 ;
   atomic_t _count ;
};
union __anonunion_ldv_21236_152 {
   unsigned long counters ;
   struct __anonstruct_ldv_21235_153 ldv_21235 ;
};
struct __anonstruct_ldv_21237_150 {
   union __anonunion_ldv_21221_151 ldv_21221 ;
   union __anonunion_ldv_21236_152 ldv_21236 ;
};
struct __anonstruct_ldv_21244_157 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_21248_156 {
   struct list_head lru ;
   struct __anonstruct_ldv_21244_157 ldv_21244 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_21253_158 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_21237_150 ldv_21237 ;
   union __anonunion_ldv_21248_156 ldv_21248 ;
   union __anonunion_ldv_21253_158 ldv_21253 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_160 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_159 {
   struct __anonstruct_linear_160 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_159 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_161 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_161 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_163 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_164 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_167 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_168 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_169 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_162 {
   int _pad[28U] ;
   struct __anonstruct__kill_163 _kill ;
   struct __anonstruct__timer_164 _timer ;
   struct __anonstruct__rt_165 _rt ;
   struct __anonstruct__sigchld_166 _sigchld ;
   struct __anonstruct__sigfault_167 _sigfault ;
   struct __anonstruct__sigpoll_168 _sigpoll ;
   struct __anonstruct__sigsys_169 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_162 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct plist_head wait_list ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_22084_172 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_22093_173 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_174 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_175 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_22084_172 ldv_22084 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_22093_173 ldv_22093 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_174 type_data ;
   union __anonunion_payload_175 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_176 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_176 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct uts_namespace;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*migrate_task_rq)(struct task_struct * , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
};
struct usb_device;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char reset_running : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned char poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_driver;
struct i2c_board_info;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*detach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   int (*suspend)(struct i2c_client * , pm_message_t ) ;
   int (*resume)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct i2c_driver *driver ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
};
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct __anonstruct_ldv_27732_179 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_27733_178 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_27732_179 ldv_27732 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_27733_178 ldv_27733 ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __s32 width ;
   __s32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion_ldv_28401_180 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion_ldv_28401_180 ldv_28401 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion_ldv_28420_181 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion_ldv_28420_181 ldv_28420 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_182 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_182 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_183 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_183 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_dv_preset {
   __u32 preset ;
   __u32 reserved[4U] ;
};
struct v4l2_dv_enum_preset {
   __u32 index ;
   __u32 preset ;
   __u8 name[32U] ;
   __u32 width ;
   __u32 height ;
   __u32 reserved[4U] ;
};
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion_ldv_28564_184 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion_ldv_28564_184 ldv_28564 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion_ldv_28585_185 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion_ldv_28585_185 ldv_28585 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion_ldv_28616_186 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion_ldv_28616_186 ldv_28616 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion_ldv_28649_187 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion_ldv_28649_187 ldv_28649 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_189 {
   __u32 data[8U] ;
};
union __anonunion_ldv_28735_188 {
   struct __anonstruct_raw_189 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_28735_188 ldv_28735 ;
};
struct __anonstruct_stop_191 {
   __u64 pts ;
};
struct __anonstruct_start_192 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_193 {
   __u32 data[16U] ;
};
union __anonunion_ldv_28750_190 {
   struct __anonstruct_stop_191 stop ;
   struct __anonstruct_start_192 start ;
   struct __anonstruct_raw_193 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_28750_190 ldv_28750 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_195 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_195 fmt ;
};
union __anonunion_parm_196 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_196 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion_ldv_28859_199 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion_ldv_28859_199 ldv_28859 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_ident {
   struct v4l2_dbg_match match ;
   __u32 ident ;
   __u32 revision ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
struct videobuf_buffer;
struct videobuf_queue;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned char streaming : 1 ;
   unsigned char reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_206 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_207 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_208 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_205 {
   struct __anonstruct_v4l_206 v4l ;
   struct __anonstruct_fb_207 fb ;
   struct __anonstruct_alsa_208 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_205 info ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_pad * , struct media_pad * , u32 ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct device *parent ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   v4l2_std_id current_norm ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*g_chip_ident)(struct v4l2_subdev * , struct v4l2_dbg_chip_ident * ) ;
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*enum_dv_presets)(struct v4l2_subdev * , struct v4l2_dv_enum_preset * ) ;
   int (*s_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*g_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*query_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
};
struct __anonstruct_pad_210 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_210 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_214 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_214 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   u64 allowed_protos ;
   u32 scanmask ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
};
struct IR_i2c;
struct IR_i2c {
   char *ir_codes ;
   struct i2c_client *c ;
   struct rc_dev *rc ;
   unsigned char old ;
   u32 polling_interval ;
   struct delayed_work work ;
   char name[32U] ;
   char phys[32U] ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
};
enum ir_kbd_get_key_fn {
    IR_KBD_GET_KEY_CUSTOM = 0,
    IR_KBD_GET_KEY_PIXELVIEW = 1,
    IR_KBD_GET_KEY_HAUP = 2,
    IR_KBD_GET_KEY_KNC1 = 3,
    IR_KBD_GET_KEY_FUSIONHDTV = 4,
    IR_KBD_GET_KEY_HAUP_XVR = 5,
    IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = 6
} ;
struct IR_i2c_init_data {
   char *ir_codes ;
   char const *name ;
   u64 type ;
   u32 polling_interval ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
   enum ir_kbd_get_key_fn internal_get_key_func ;
   struct rc_dev *rc_dev ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_222 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_222 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_224 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_224 sync_serial_settings;
struct __anonstruct_te1_settings_225 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_225 te1_settings;
struct __anonstruct_raw_hdlc_proto_226 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_226 raw_hdlc_proto;
struct __anonstruct_fr_proto_227 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_227 fr_proto;
struct __anonstruct_fr_proto_pvc_228 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_228 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_229 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_229 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_230 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_230 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_231 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_231 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_232 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_233 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_232 ifr_ifrn ;
   union __anonunion_ifr_ifru_233 ifr_ifru ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct sk_buff;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_35213_251 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_35214_250 {
   __wsum csum ;
   struct __anonstruct_ldv_35213_251 ldv_35213 ;
};
union __anonunion_ldv_35253_252 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 avail_size ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_35214_250 ldv_35214 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_35253_252 ldv_35253 ;
   sk_buff_data_t inner_transport_header ;
   sk_buff_data_t inner_network_header ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[92U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   kgid_t sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[] ;
};
struct nlattr;
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   struct nf_ip_net nf_ct_proto ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t rt_genid ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
struct cgroup;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   int id ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct work_struct free_work ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct vlan_info;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_42568_264 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned char neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_42568_264 ldv_42568 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[26U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_flags ;
   unsigned char ifa_prefixlen ;
   char ifa_label[16U] ;
};
enum em28xx_chip_id {
    CHIP_ID_EM2800 = 7,
    CHIP_ID_EM2710 = 17,
    CHIP_ID_EM2820 = 18,
    CHIP_ID_EM2840 = 20,
    CHIP_ID_EM2750 = 33,
    CHIP_ID_EM2860 = 34,
    CHIP_ID_EM2870 = 35,
    CHIP_ID_EM2883 = 36,
    CHIP_ID_EM2874 = 65,
    CHIP_ID_EM2884 = 68,
    CHIP_ID_EM28174 = 113
} ;
enum em28xx_mode {
    EM28XX_SUSPEND = 0,
    EM28XX_ANALOG_MODE = 1,
    EM28XX_DIGITAL_MODE = 2
} ;
struct em28xx;
struct em28xx_usb_isoc_bufs {
   int max_pkt_size ;
   int num_packets ;
   int num_bufs ;
   struct urb **urb ;
   char **transfer_buffer ;
};
struct em28xx_buffer;
struct em28xx_usb_isoc_ctl {
   struct em28xx_usb_isoc_bufs analog_bufs ;
   struct em28xx_usb_isoc_bufs digital_bufs ;
   struct em28xx_buffer *vid_buf ;
   struct em28xx_buffer *vbi_buf ;
   int (*isoc_copy)(struct em28xx * , struct urb * ) ;
};
struct em28xx_fmt {
   char *name ;
   u32 fourcc ;
   int depth ;
   int reg ;
};
struct em28xx_buffer {
   struct videobuf_buffer vb ;
   struct list_head frame ;
   int top_field ;
};
struct em28xx_dmaqueue {
   struct list_head active ;
   wait_queue_head_t wq ;
   int pos ;
};
enum enum28xx_itype {
    EM28XX_VMUX_COMPOSITE1 = 1,
    EM28XX_VMUX_COMPOSITE2 = 2,
    EM28XX_VMUX_COMPOSITE3 = 3,
    EM28XX_VMUX_COMPOSITE4 = 4,
    EM28XX_VMUX_SVIDEO = 5,
    EM28XX_VMUX_TELEVISION = 6,
    EM28XX_VMUX_CABLE = 7,
    EM28XX_VMUX_DVB = 8,
    EM28XX_VMUX_DEBUG = 9,
    EM28XX_RADIO = 10
} ;
enum em28xx_ac97_mode {
    EM28XX_NO_AC97 = 0,
    EM28XX_AC97_EM202 = 1,
    EM28XX_AC97_SIGMATEL = 2,
    EM28XX_AC97_OTHER = 3
} ;
struct em28xx_audio_mode {
   enum em28xx_ac97_mode ac97 ;
   u16 ac97_feat ;
   u32 ac97_vendor_id ;
   unsigned char has_audio : 1 ;
   unsigned char i2s_3rates : 1 ;
   unsigned char i2s_5rates : 1 ;
};
enum em28xx_amux {
    EM28XX_AMUX_VIDEO = 0,
    EM28XX_AMUX_LINE_IN = 1,
    EM28XX_AMUX_VIDEO2 = 2,
    EM28XX_AMUX_PHONE = 3,
    EM28XX_AMUX_MIC = 4,
    EM28XX_AMUX_CD = 5,
    EM28XX_AMUX_AUX = 6,
    EM28XX_AMUX_PCM_OUT = 7
} ;
enum em28xx_aout {
    EM28XX_AOUT_MASTER = 1,
    EM28XX_AOUT_LINE = 2,
    EM28XX_AOUT_MONO = 4,
    EM28XX_AOUT_LFE = 8,
    EM28XX_AOUT_SURR = 16,
    EM28XX_AOUT_PCM_IN = 128,
    EM28XX_AOUT_PCM_MIC_PCM = 0,
    EM28XX_AOUT_PCM_CD = 256,
    EM28XX_AOUT_PCM_VIDEO = 512,
    EM28XX_AOUT_PCM_AUX = 768,
    EM28XX_AOUT_PCM_LINE = 1024,
    EM28XX_AOUT_PCM_STEREO = 1280,
    EM28XX_AOUT_PCM_MONO = 1536,
    EM28XX_AOUT_PCM_PHONE = 1792
} ;
struct em28xx_reg_seq {
   int reg ;
   unsigned char val ;
   unsigned char mask ;
   int sleep ;
};
struct em28xx_input {
   enum enum28xx_itype type ;
   unsigned int vmux ;
   enum em28xx_amux amux ;
   enum em28xx_aout aout ;
   struct em28xx_reg_seq *gpio ;
};
enum em28xx_decoder {
    EM28XX_NODECODER = 0,
    EM28XX_TVP5150 = 1,
    EM28XX_SAA711X = 2
} ;
enum em28xx_sensor {
    EM28XX_NOSENSOR = 0,
    EM28XX_MT9V011 = 1,
    EM28XX_MT9M001 = 2,
    EM28XX_MT9M111 = 3
} ;
enum em28xx_adecoder {
    EM28XX_NOADECODER = 0,
    EM28XX_TVAUDIO = 1
} ;
struct em28xx_board {
   char *name ;
   int vchannels ;
   int tuner_type ;
   int tuner_addr ;
   unsigned int tda9887_conf ;
   struct em28xx_reg_seq *dvb_gpio ;
   struct em28xx_reg_seq *suspend_gpio ;
   struct em28xx_reg_seq *tuner_gpio ;
   struct em28xx_reg_seq *mute_gpio ;
   unsigned char is_em2800 : 1 ;
   unsigned char has_msp34xx : 1 ;
   unsigned char mts_firmware : 1 ;
   unsigned char max_range_640_480 : 1 ;
   unsigned char has_dvb : 1 ;
   unsigned char has_snapshot_button : 1 ;
   unsigned char is_webcam : 1 ;
   unsigned char valid : 1 ;
   unsigned char has_ir_i2c : 1 ;
   unsigned char xclk ;
   unsigned char i2c_speed ;
   unsigned char radio_addr ;
   unsigned short tvaudio_addr ;
   enum em28xx_decoder decoder ;
   enum em28xx_adecoder adecoder ;
   struct em28xx_input input[4U] ;
   struct em28xx_input radio ;
   char *ir_codes ;
};
enum em28xx_dev_state {
    DEV_INITIALIZED = 1,
    DEV_DISCONNECTED = 2,
    DEV_MISCONFIGURED = 4
} ;
struct snd_pcm_substream;
struct snd_card;
struct em28xx_audio {
   char name[50U] ;
   char *transfer_buffer[5U] ;
   struct urb *urb[5U] ;
   struct usb_device *udev ;
   unsigned int capture_transfer_done ;
   struct snd_pcm_substream *capture_pcm_substream ;
   unsigned int hwptr_done_capture ;
   struct snd_card *sndcard ;
   int users ;
   spinlock_t slock ;
};
struct em28xx_fh {
   struct em28xx *dev ;
   int radio ;
   unsigned int resources ;
   struct videobuf_queue vb_vidq ;
   struct videobuf_queue vb_vbiq ;
   enum v4l2_buf_type type ;
};
struct em28xx_IR;
struct em28xx_dvb;
struct em28xx {
   char name[30U] ;
   int model ;
   int devno ;
   enum em28xx_chip_id chip_id ;
   int audio_ifnum ;
   struct v4l2_device v4l2_dev ;
   struct em28xx_board board ;
   enum em28xx_sensor em28xx_sensor ;
   int sensor_xres ;
   int sensor_yres ;
   int sensor_xtal ;
   int progressive ;
   int vinmode ;
   int vinctl ;
   unsigned char has_audio_class : 1 ;
   unsigned char has_alsa_audio : 1 ;
   unsigned char is_audio_only : 1 ;
   struct work_struct wq_trigger ;
   atomic_t stream_started ;
   struct em28xx_fmt *format ;
   struct em28xx_IR *ir ;
   unsigned int wait_after_write ;
   struct list_head devlist ;
   u32 i2s_speed ;
   struct em28xx_audio_mode audio_mode ;
   int tuner_type ;
   int tuner_addr ;
   int tda9887_conf ;
   struct i2c_adapter i2c_adap ;
   struct i2c_client i2c_client ;
   int users ;
   struct video_device *vdev ;
   v4l2_std_id norm ;
   int ctl_freq ;
   unsigned int ctl_input ;
   unsigned int ctl_ainput ;
   unsigned int ctl_aoutput ;
   int mute ;
   int volume ;
   int width ;
   int height ;
   unsigned int hscale ;
   unsigned int vscale ;
   int interlaced ;
   unsigned int video_bytesread ;
   unsigned long hash ;
   unsigned long i2c_hash ;
   struct em28xx_audio adev ;
   enum em28xx_dev_state state ;
   int capture_type ;
   int vbi_read ;
   unsigned char cur_field ;
   unsigned int vbi_width ;
   unsigned int vbi_height ;
   struct work_struct request_module_wk ;
   struct mutex lock ;
   struct mutex ctrl_urb_lock ;
   struct list_head inqueue ;
   struct list_head outqueue ;
   struct video_device *vbi_dev ;
   struct video_device *radio_dev ;
   unsigned int resources ;
   unsigned char eedata[256U] ;
   struct em28xx_dmaqueue vidq ;
   struct em28xx_dmaqueue vbiq ;
   struct em28xx_usb_isoc_ctl isoc_ctl ;
   spinlock_t slock ;
   struct usb_device *udev ;
   int alt ;
   int max_pkt_size ;
   int num_alt ;
   unsigned int *alt_max_pkt_size ;
   int dvb_alt ;
   unsigned int dvb_max_pkt_size ;
   char urb_buf[80U] ;
   int (*em28xx_write_regs)(struct em28xx * , u16 , char * , int ) ;
   int (*em28xx_read_reg)(struct em28xx * , u16 ) ;
   int (*em28xx_read_reg_req_len)(struct em28xx * , u8 , u16 , char * , int ) ;
   int (*em28xx_write_regs_req)(struct em28xx * , u8 , u16 , char * , int ) ;
   int (*em28xx_read_reg_req)(struct em28xx * , u8 , u16 ) ;
   enum em28xx_mode mode ;
   u16 reg_gpo_num ;
   u16 reg_gpio_num ;
   unsigned char reg_gpo ;
   unsigned char reg_gpio ;
   char snapshot_button_path[30U] ;
   struct input_dev *sbutton_input_dev ;
   struct delayed_work sbutton_query_work ;
   struct em28xx_dvb *dvb ;
   struct IR_i2c_init_data init_data ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_g_chip_ident)(struct file * , void * , struct v4l2_dbg_chip_ident * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_enum_dv_presets)(struct file * , void * , struct v4l2_dv_enum_preset * ) ;
   int (*vidioc_s_dv_preset)(struct file * , void * , struct v4l2_dv_preset * ) ;
   int (*vidioc_g_dv_preset)(struct file * , void * , struct v4l2_dv_preset * ) ;
   int (*vidioc_query_dv_preset)(struct file * , void * , struct v4l2_dv_preset * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , int , void * ) ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   unsigned int config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___14;
typedef int ldv_func_ret_type___18;
enum hrtimer_restart;
struct em28xx_eeprom {
   u32 id ;
   u16 vendor_ID ;
   u16 product_ID ;
   u16 chip_conf ;
   u16 board_conf ;
   u16 string1 ;
   u16 string2 ;
   u16 string3 ;
   u8 string_idx_table ;
};
enum hrtimer_restart;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
};
struct usb_driver;
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct mt9v011_platform_data {
   unsigned int xtal ;
};
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
};
enum v4l2_i2c_tuner_type {
    ADDRS_RADIO = 0,
    ADDRS_DEMOD = 1,
    ADDRS_TV = 2,
    ADDRS_TV_WITH_DEMOD = 3
} ;
struct xc2028_ctrl {
   char *fname ;
   int max_len ;
   int msleep ;
   unsigned int scode_table ;
   unsigned char mts : 1 ;
   unsigned char input1 : 1 ;
   unsigned char vhfbw7 : 1 ;
   unsigned char uhfbw8 : 1 ;
   unsigned char disable_power_mgmt : 1 ;
   unsigned char read_not_reliable : 1 ;
   unsigned int demod ;
   unsigned char type : 2 ;
};
struct em28xx_hash_table {
   unsigned long hash ;
   unsigned int model ;
   unsigned int tuner ;
};
typedef int ldv_func_ret_type___15;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
enum hrtimer_restart;
struct snd_aes_iec958 {
   unsigned char status[24U] ;
   unsigned char subcode[147U] ;
   unsigned char pad ;
   unsigned char dig_subframe[4U] ;
};
typedef unsigned long snd_pcm_uframes_t;
typedef long snd_pcm_sframes_t;
typedef int snd_pcm_access_t;
typedef int snd_pcm_format_t;
typedef int snd_pcm_subformat_t;
typedef int snd_pcm_state_t;
union snd_pcm_sync_id {
   unsigned char id[16U] ;
   unsigned short id16[8U] ;
   unsigned int id32[4U] ;
};
struct snd_interval {
   unsigned int min ;
   unsigned int max ;
   unsigned char openmin : 1 ;
   unsigned char openmax : 1 ;
   unsigned char integer : 1 ;
   unsigned char empty : 1 ;
};
struct snd_mask {
   __u32 bits[8U] ;
};
struct snd_pcm_hw_params {
   unsigned int flags ;
   struct snd_mask masks[3U] ;
   struct snd_mask mres[5U] ;
   struct snd_interval intervals[12U] ;
   struct snd_interval ires[9U] ;
   unsigned int rmask ;
   unsigned int cmask ;
   unsigned int info ;
   unsigned int msbits ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   snd_pcm_uframes_t fifo_size ;
   unsigned char reserved[64U] ;
};
struct snd_pcm_mmap_status {
   snd_pcm_state_t state ;
   int pad1 ;
   snd_pcm_uframes_t hw_ptr ;
   struct timespec tstamp ;
   snd_pcm_state_t suspended_state ;
   struct timespec audio_tstamp ;
};
struct snd_pcm_mmap_control {
   snd_pcm_uframes_t appl_ptr ;
   snd_pcm_uframes_t avail_min ;
};
typedef int snd_ctl_elem_type_t;
typedef int snd_ctl_elem_iface_t;
struct snd_ctl_elem_id {
   unsigned int numid ;
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char name[44U] ;
   unsigned int index ;
};
struct __anonstruct_integer_183 {
   long min ;
   long max ;
   long step ;
};
struct __anonstruct_integer64_184 {
   long long min ;
   long long max ;
   long long step ;
};
struct __anonstruct_enumerated_185 {
   unsigned int items ;
   unsigned int item ;
   char name[64U] ;
   __u64 names_ptr ;
   unsigned int names_length ;
};
union __anonunion_value_182 {
   struct __anonstruct_integer_183 integer ;
   struct __anonstruct_integer64_184 integer64 ;
   struct __anonstruct_enumerated_185 enumerated ;
   unsigned char reserved[128U] ;
};
union __anonunion_dimen_186 {
   unsigned short d[4U] ;
   unsigned short *d_ptr ;
};
struct snd_ctl_elem_info {
   struct snd_ctl_elem_id id ;
   snd_ctl_elem_type_t type ;
   unsigned int access ;
   unsigned int count ;
   __kernel_pid_t owner ;
   union __anonunion_value_182 value ;
   union __anonunion_dimen_186 dimen ;
   unsigned char reserved[56U] ;
};
union __anonunion_integer_188 {
   long value[128U] ;
   long *value_ptr ;
};
union __anonunion_integer64_189 {
   long long value[64U] ;
   long long *value_ptr ;
};
union __anonunion_enumerated_190 {
   unsigned int item[128U] ;
   unsigned int *item_ptr ;
};
union __anonunion_bytes_191 {
   unsigned char data[512U] ;
   unsigned char *data_ptr ;
};
union __anonunion_value_187 {
   union __anonunion_integer_188 integer ;
   union __anonunion_integer64_189 integer64 ;
   union __anonunion_enumerated_190 enumerated ;
   union __anonunion_bytes_191 bytes ;
   struct snd_aes_iec958 iec958 ;
};
struct snd_ctl_elem_value {
   struct snd_ctl_elem_id id ;
   unsigned char indirect : 1 ;
   union __anonunion_value_187 value ;
   struct timespec tstamp ;
   unsigned char reserved[112U] ;
};
struct snd_dma_device {
   int type ;
   struct device *dev ;
};
struct snd_dma_buffer {
   struct snd_dma_device dev ;
   unsigned char *area ;
   dma_addr_t addr ;
   size_t bytes ;
   void *private_data ;
};
struct snd_pcm_oss_setup {
   char *task_name ;
   unsigned char disable : 1 ;
   unsigned char direct : 1 ;
   unsigned char block : 1 ;
   unsigned char nonblock : 1 ;
   unsigned char partialfrag : 1 ;
   unsigned char nosilence : 1 ;
   unsigned char buggyptr : 1 ;
   unsigned int periods ;
   unsigned int period_size ;
   struct snd_pcm_oss_setup *next ;
};
struct snd_pcm_plugin;
struct snd_pcm_oss_runtime {
   unsigned char params : 1 ;
   unsigned char prepare : 1 ;
   unsigned char trigger : 1 ;
   unsigned char sync_trigger : 1 ;
   int rate ;
   int format ;
   unsigned int channels ;
   unsigned int fragshift ;
   unsigned int maxfrags ;
   unsigned int subdivision ;
   size_t period_bytes ;
   size_t period_frames ;
   size_t period_ptr ;
   unsigned int periods ;
   size_t buffer_bytes ;
   size_t bytes ;
   size_t mmap_bytes ;
   char *buffer ;
   size_t buffer_used ;
   struct mutex params_lock ;
   struct snd_pcm_plugin *plugin_first ;
   struct snd_pcm_plugin *plugin_last ;
   unsigned int prev_hw_ptr_period ;
};
struct snd_pcm_oss_substream {
   unsigned char oss : 1 ;
   struct snd_pcm_oss_setup setup ;
};
struct snd_info_entry;
struct snd_pcm_oss_stream {
   struct snd_pcm_oss_setup *setup_list ;
   struct mutex setup_mutex ;
   struct snd_info_entry *proc_entry ;
};
struct snd_pcm_oss {
   int reg ;
   unsigned int reg_mask ;
};
struct snd_pcm_hardware {
   unsigned int info ;
   u64 formats ;
   unsigned int rates ;
   unsigned int rate_min ;
   unsigned int rate_max ;
   unsigned int channels_min ;
   unsigned int channels_max ;
   size_t buffer_bytes_max ;
   size_t period_bytes_min ;
   size_t period_bytes_max ;
   unsigned int periods_min ;
   unsigned int periods_max ;
   size_t fifo_size ;
};
struct snd_pcm_ops {
   int (*open)(struct snd_pcm_substream * ) ;
   int (*close)(struct snd_pcm_substream * ) ;
   int (*ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
   int (*hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
   int (*hw_free)(struct snd_pcm_substream * ) ;
   int (*prepare)(struct snd_pcm_substream * ) ;
   int (*trigger)(struct snd_pcm_substream * , int ) ;
   snd_pcm_uframes_t (*pointer)(struct snd_pcm_substream * ) ;
   int (*wall_clock)(struct snd_pcm_substream * , struct timespec * ) ;
   int (*copy)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , void * , snd_pcm_uframes_t ) ;
   int (*silence)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , snd_pcm_uframes_t ) ;
   struct page *(*page)(struct snd_pcm_substream * , unsigned long ) ;
   int (*mmap)(struct snd_pcm_substream * , struct vm_area_struct * ) ;
   int (*ack)(struct snd_pcm_substream * ) ;
};
struct snd_pcm_hw_rule;
struct snd_pcm_hw_rule {
   unsigned int cond ;
   int (*func)(struct snd_pcm_hw_params * , struct snd_pcm_hw_rule * ) ;
   int var ;
   int deps[4U] ;
   void *private ;
};
struct snd_pcm_hw_constraints {
   struct snd_mask masks[3U] ;
   struct snd_interval intervals[12U] ;
   unsigned int rules_num ;
   unsigned int rules_all ;
   struct snd_pcm_hw_rule *rules ;
};
struct snd_pcm_hwptr_log;
struct snd_pcm_runtime {
   struct snd_pcm_substream *trigger_master ;
   struct timespec trigger_tstamp ;
   int overrange ;
   snd_pcm_uframes_t avail_max ;
   snd_pcm_uframes_t hw_ptr_base ;
   snd_pcm_uframes_t hw_ptr_interrupt ;
   unsigned long hw_ptr_jiffies ;
   unsigned long hw_ptr_buffer_jiffies ;
   snd_pcm_sframes_t delay ;
   u64 hw_ptr_wrap ;
   snd_pcm_access_t access ;
   snd_pcm_format_t format ;
   snd_pcm_subformat_t subformat ;
   unsigned int rate ;
   unsigned int channels ;
   snd_pcm_uframes_t period_size ;
   unsigned int periods ;
   snd_pcm_uframes_t buffer_size ;
   snd_pcm_uframes_t min_align ;
   size_t byte_align ;
   unsigned int frame_bits ;
   unsigned int sample_bits ;
   unsigned int info ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   unsigned char no_period_wakeup : 1 ;
   int tstamp_mode ;
   unsigned int period_step ;
   snd_pcm_uframes_t start_threshold ;
   snd_pcm_uframes_t stop_threshold ;
   snd_pcm_uframes_t silence_threshold ;
   snd_pcm_uframes_t silence_size ;
   snd_pcm_uframes_t boundary ;
   snd_pcm_uframes_t silence_start ;
   snd_pcm_uframes_t silence_filled ;
   union snd_pcm_sync_id sync ;
   struct snd_pcm_mmap_status *status ;
   struct snd_pcm_mmap_control *control ;
   snd_pcm_uframes_t twake ;
   wait_queue_head_t sleep ;
   wait_queue_head_t tsleep ;
   struct fasync_struct *fasync ;
   void *private_data ;
   void (*private_free)(struct snd_pcm_runtime * ) ;
   struct snd_pcm_hardware hw ;
   struct snd_pcm_hw_constraints hw_constraints ;
   void (*transfer_ack_begin)(struct snd_pcm_substream * ) ;
   void (*transfer_ack_end)(struct snd_pcm_substream * ) ;
   unsigned int timer_resolution ;
   int tstamp_type ;
   unsigned char *dma_area ;
   dma_addr_t dma_addr ;
   size_t dma_bytes ;
   struct snd_dma_buffer *dma_buffer_p ;
   struct snd_pcm_oss_runtime oss ;
   struct snd_pcm_hwptr_log *hwptr_log ;
};
struct snd_pcm_group {
   spinlock_t lock ;
   struct list_head substreams ;
   int count ;
};
struct snd_pcm;
struct snd_pcm_str;
struct snd_timer;
struct snd_pcm_substream {
   struct snd_pcm *pcm ;
   struct snd_pcm_str *pstr ;
   void *private_data ;
   int number ;
   char name[32U] ;
   int stream ;
   struct pm_qos_request latency_pm_qos_req ;
   size_t buffer_bytes_max ;
   struct snd_dma_buffer dma_buffer ;
   unsigned int dma_buf_id ;
   size_t dma_max ;
   struct snd_pcm_ops *ops ;
   struct snd_pcm_runtime *runtime ;
   struct snd_timer *timer ;
   unsigned char timer_running : 1 ;
   struct snd_pcm_substream *next ;
   struct list_head link_list ;
   struct snd_pcm_group self_group ;
   struct snd_pcm_group *group ;
   void *file ;
   int ref_count ;
   atomic_t mmap_count ;
   unsigned int f_flags ;
   void (*pcm_release)(struct snd_pcm_substream * ) ;
   struct pid *pid ;
   struct snd_pcm_oss_substream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   struct snd_info_entry *proc_hw_params_entry ;
   struct snd_info_entry *proc_sw_params_entry ;
   struct snd_info_entry *proc_status_entry ;
   struct snd_info_entry *proc_prealloc_entry ;
   struct snd_info_entry *proc_prealloc_max_entry ;
   unsigned char hw_opened : 1 ;
};
struct snd_kcontrol;
struct snd_pcm_str {
   int stream ;
   struct snd_pcm *pcm ;
   unsigned int substream_count ;
   unsigned int substream_opened ;
   struct snd_pcm_substream *substream ;
   struct snd_pcm_oss_stream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   unsigned int xrun_debug ;
   struct snd_info_entry *proc_xrun_debug_entry ;
   struct snd_kcontrol *chmap_kctl ;
};
struct snd_pcm {
   struct snd_card *card ;
   struct list_head list ;
   int device ;
   unsigned int info_flags ;
   unsigned short dev_class ;
   unsigned short dev_subclass ;
   char id[64U] ;
   char name[80U] ;
   struct snd_pcm_str streams[2U] ;
   struct mutex open_mutex ;
   wait_queue_head_t open_wait ;
   void *private_data ;
   void (*private_free)(struct snd_pcm * ) ;
   struct device *dev ;
   bool internal ;
   struct snd_pcm_oss oss ;
};
typedef int snd_kcontrol_info_t(struct snd_kcontrol * , struct snd_ctl_elem_info * );
typedef int snd_kcontrol_get_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_put_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_tlv_rw_t(struct snd_kcontrol * , int , unsigned int , unsigned int * );
struct snd_ctl_file;
struct snd_kcontrol_volatile {
   struct snd_ctl_file *owner ;
   unsigned int access ;
};
union __anonunion_tlv_197 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol {
   struct list_head list ;
   struct snd_ctl_elem_id id ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_197 tlv ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_kcontrol * ) ;
   struct snd_kcontrol_volatile vd[0U] ;
};
struct snd_ctl_file {
   struct list_head list ;
   struct snd_card *card ;
   struct pid *pid ;
   int prefer_pcm_subdevice ;
   int prefer_rawmidi_subdevice ;
   wait_queue_head_t change_sleep ;
   spinlock_t read_lock ;
   struct fasync_struct *fasync ;
   int subscribed ;
   struct list_head events ;
};
struct snd_info_buffer {
   char *buffer ;
   unsigned int curr ;
   unsigned int size ;
   unsigned int len ;
   int stop ;
   int error ;
};
struct snd_info_entry_text {
   void (*read)(struct snd_info_entry * , struct snd_info_buffer * ) ;
   void (*write)(struct snd_info_entry * , struct snd_info_buffer * ) ;
};
struct snd_info_entry_ops {
   int (*open)(struct snd_info_entry * , unsigned short , void ** ) ;
   int (*release)(struct snd_info_entry * , unsigned short , void * ) ;
   ssize_t (*read)(struct snd_info_entry * , void * , struct file * , char * , size_t ,
                   loff_t ) ;
   ssize_t (*write)(struct snd_info_entry * , void * , struct file * , char const * ,
                    size_t , loff_t ) ;
   loff_t (*llseek)(struct snd_info_entry * , void * , struct file * , loff_t , int ) ;
   unsigned int (*poll)(struct snd_info_entry * , void * , struct file * , poll_table * ) ;
   int (*ioctl)(struct snd_info_entry * , void * , struct file * , unsigned int ,
                unsigned long ) ;
   int (*mmap)(struct snd_info_entry * , void * , struct inode * , struct file * ,
               struct vm_area_struct * ) ;
};
union __anonunion_c_198 {
   struct snd_info_entry_text text ;
   struct snd_info_entry_ops *ops ;
};
struct snd_info_entry {
   char const *name ;
   umode_t mode ;
   long size ;
   unsigned short content ;
   union __anonunion_c_198 c ;
   struct snd_info_entry *parent ;
   struct snd_card *card ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_info_entry * ) ;
   struct proc_dir_entry *p ;
   struct mutex access ;
   struct list_head children ;
   struct list_head list ;
};
struct em28xx_ops {
   struct list_head next ;
   char *name ;
   int id ;
   int (*init)(struct em28xx * ) ;
   int (*fini)(struct em28xx * ) ;
};
struct em28xx_vol_itable {
   enum em28xx_amux mux ;
   u8 reg ;
};
struct em28xx_vol_otable {
   enum em28xx_aout mux ;
   u8 reg ;
};
enum hrtimer_restart;
long ldv__builtin_expect(long exp , long c ) ;
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_10(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_16(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_20(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_2 ;
int ref_cnt ;
extern int __VERIFIER_nondet_int(void) ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
int ldv_state_variable_5 ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{ struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6321;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6321;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6321;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6321;
  default:
  __bad_percpu_size();
  }
  ldv_6321:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern void do_gettimeofday(struct timeval * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern struct module __this_module ;
__inline static char const *dev_name(struct device const *dev )
{ char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{ int actual ;
  int tmp ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  if ((int )size > actual) {
    tmp = actual;
  } else {
    tmp = -1;
  }
  return (tmp);
}
}
extern int usb_set_interface(struct usb_device * , int , int ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{ void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern int videobuf_iolock(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
extern int videobuf_queue_is_busy(struct videobuf_queue * ) ;
extern int videobuf_reqbufs(struct videobuf_queue * , struct v4l2_requestbuffers * ) ;
extern int videobuf_querybuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_qbuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_dqbuf(struct videobuf_queue * , struct v4l2_buffer * , int ) ;
extern int videobuf_streamon(struct videobuf_queue * ) ;
extern int videobuf_streamoff(struct videobuf_queue * ) ;
extern void videobuf_stop(struct videobuf_queue * ) ;
extern ssize_t videobuf_read_stream(struct videobuf_queue * , char * , size_t , loff_t * ,
                                    int , int ) ;
extern unsigned int videobuf_poll_stream(struct file * , struct videobuf_queue * ,
                                         poll_table * ) ;
extern int videobuf_mmap_free(struct videobuf_queue * ) ;
extern int videobuf_mmap_mapper(struct videobuf_queue * , struct vm_area_struct * ) ;
extern void videobuf_queue_vmalloc_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                        struct device * , spinlock_t * , enum v4l2_buf_type ,
                                        enum v4l2_field , unsigned int , void * ,
                                        struct mutex * ) ;
extern void *videobuf_to_vmalloc(struct videobuf_buffer * ) ;
extern void videobuf_vmalloc_free(struct videobuf_buffer * ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{ int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{ void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{ struct video_device *tmp ;
  void *tmp___0 ;
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  return (tmp___0);
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{ char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static int video_is_registered(struct video_device *vdev )
{ int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& vdev->flags));
  return (tmp);
}
}
extern int v4l2_chip_match_host(struct v4l2_dbg_match const * ) ;
extern void v4l_bound_align_image(unsigned int * , unsigned int , unsigned int ,
                                  unsigned int , unsigned int * , unsigned int ,
                                  unsigned int , unsigned int , unsigned int ) ;
int em28xx_read_reg_req_len(struct em28xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int em28xx_read_reg(struct em28xx *dev , u16 reg ) ;
int em28xx_write_regs(struct em28xx *dev , u16 reg , char *buf , int len ) ;
int em28xx_write_reg(struct em28xx *dev , u16 reg , u8 val ) ;
int em28xx_read_ac97(struct em28xx *dev , u8 reg ) ;
int em28xx_write_ac97(struct em28xx *dev , u8 reg , u16 val ) ;
int em28xx_audio_analog_set(struct em28xx *dev ) ;
int em28xx_colorlevels_set_default(struct em28xx *dev ) ;
int em28xx_vbi_supported(struct em28xx *dev ) ;
int em28xx_set_outfmt(struct em28xx *dev ) ;
int em28xx_resolution_set(struct em28xx *dev ) ;
int em28xx_set_alternate(struct em28xx *dev ) ;
int em28xx_init_isoc(struct em28xx *dev , enum em28xx_mode mode , int max_packets ,
                     int num_bufs , int max_pkt_size , int (*isoc_copy)(struct em28xx * ,
                                                                        struct urb * ) ) ;
void em28xx_uninit_isoc(struct em28xx *dev , enum em28xx_mode mode ) ;
int em28xx_set_mode(struct em28xx *dev , enum em28xx_mode set_mode ) ;
void em28xx_wake_i2c(struct em28xx *dev ) ;
int em28xx_register_analog_devices(struct em28xx *dev ) ;
void em28xx_release_analog_resources(struct em28xx *dev ) ;
struct em28xx_board em28xx_boards[88U] ;
void em28xx_release_resources(struct em28xx *dev ) ;
struct videobuf_queue_ops em28xx_vbi_qops ;
__inline static int em28xx_compression_disable(struct em28xx *dev )
{ int tmp ;
  {
  tmp = em28xx_write_reg(dev, 38, 0);
  return (tmp);
}
}
__inline static unsigned int norm_maxw(struct em28xx *dev )
{
  {
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    return ((unsigned int )dev->sensor_xres);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    return (640U);
  } else {
  }
  return (720U);
}
}
__inline static unsigned int norm_maxh(struct em28xx *dev )
{ unsigned int tmp ;
  {
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    return ((unsigned int )dev->sensor_yres);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    return (480U);
  } else {
  }
  if ((dev->norm & 16713471ULL) != 0ULL) {
    tmp = 576U;
  } else {
    tmp = 480U;
  }
  return (tmp);
}
}
extern void v4l2_video_std_frame_period(int , struct v4l2_fract * ) ;
extern char const *v4l2_type_names[] ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
static unsigned int isoc_debug ;
static unsigned int video_nr[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int vbi_nr[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int radio_nr[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int video_debug ;
static struct em28xx_fmt format[6U] = { {(char *)"16 bpp YUY2, 4:2:2, packed", 1448695129U, 16, 20},
        {(char *)"16 bpp RGB 565, LE", 1346520914U, 16, 4},
        {(char *)"8 bpp Bayer BGBG..GRGR", 825770306U, 8, 3},
        {(char *)"8 bpp Bayer GRGR..BGBG", 1195528775U, 8, 1},
        {(char *)"8 bpp Bayer GBGB..RGRG", 1196573255U, 8, 2},
        {(char *)"12 bpp YUV411", 1345401140U, 12, 24}};
static struct v4l2_queryctrl ac97_qctrl[2U] = { {9963781U, 1U, {'V', 'o', 'l', 'u', 'm', 'e', '\000'}, 0, 31, 1, 31, 32U, {0U,
                                                                                0U}},
        {9963785U,
      2U, {'M', 'u', 't', 'e', '\000'}, 0, 1, 1, 1, 0U, {0U, 0U}}};
__inline static void buffer_filled(struct em28xx *dev , struct em28xx_dmaqueue *dma_q ,
                                   struct em28xx_buffer *buf )
{
  {
  if (isoc_debug != 0U) {
    printk("\016%s %s :[%p/%d] wakeup\n", (char *)(& dev->name), "buffer_filled",
           buf, buf->vb.i);
  } else {
  }
  buf->vb.state = 4;
  buf->vb.field_count = buf->vb.field_count + 1U;
  do_gettimeofday(& buf->vb.ts);
  dev->isoc_ctl.vid_buf = 0;
  list_del(& buf->vb.queue);
  __wake_up(& buf->vb.done, 3U, 1, 0);
  return;
}
}
__inline static void vbi_buffer_filled(struct em28xx *dev , struct em28xx_dmaqueue *dma_q ,
                                       struct em28xx_buffer *buf )
{
  {
  if (isoc_debug != 0U) {
    printk("\016%s %s :[%p/%d] wakeup\n", (char *)(& dev->name), "vbi_buffer_filled",
           buf, buf->vb.i);
  } else {
  }
  buf->vb.state = 4;
  buf->vb.field_count = buf->vb.field_count + 1U;
  do_gettimeofday(& buf->vb.ts);
  dev->isoc_ctl.vbi_buf = 0;
  list_del(& buf->vb.queue);
  __wake_up(& buf->vb.done, 3U, 1, 0);
  return;
}
}
static void em28xx_copy_video(struct em28xx *dev , struct em28xx_dmaqueue *dma_q ,
                              struct em28xx_buffer *buf , unsigned char *p , unsigned char *outp ,
                              unsigned long len )
{ void *fieldstart ;
  void *startwrite ;
  void *startread ;
  int linesdone ;
  int currlinedone ;
  int offset ;
  int lencopy ;
  int remain ;
  int bytesperline ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  bytesperline = dev->width << 1;
  if ((unsigned long )dma_q->pos + len > buf->vb.size) {
    len = buf->vb.size - (unsigned long )dma_q->pos;
  } else {
  }
  startread = (void *)p;
  remain = (int )len;
  if (dev->progressive != 0) {
    fieldstart = (void *)outp;
  } else
  if (buf->top_field != 0) {
    fieldstart = (void *)outp;
  } else {
    fieldstart = (void *)outp + (unsigned long )bytesperline;
  }
  linesdone = dma_q->pos / bytesperline;
  currlinedone = dma_q->pos % bytesperline;
  if (dev->progressive != 0) {
    offset = linesdone * bytesperline + currlinedone;
  } else {
    offset = (linesdone * bytesperline) * 2 + currlinedone;
  }
  startwrite = fieldstart + (unsigned long )offset;
  lencopy = bytesperline - currlinedone;
  if (remain < lencopy) {
    lencopy = remain;
  } else {
    lencopy = lencopy;
  }
  if ((unsigned long )((char *)startwrite + (unsigned long )lencopy) > (unsigned long )((char *)outp + buf->vb.size)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :Overflow of %zi bytes past buffer end (1)\n", (char *)(& dev->name),
             "em28xx_copy_video", ((long )startwrite - (long )outp) + ((long )((unsigned long )lencopy) - (long )buf->vb.size));
    } else {
    }
    remain = (int )((unsigned int )((long )((char *)outp + buf->vb.size)) - (unsigned int )((long )startwrite));
    lencopy = remain;
  } else {
  }
  if (lencopy <= 0) {
    return;
  } else {
  }
  __len = (size_t )lencopy;
  __ret = memcpy(startwrite, (void const *)startread, __len);
  remain = remain - lencopy;
  goto ldv_46323;
  ldv_46322:
  startwrite = startwrite + (unsigned long )(lencopy + bytesperline);
  startread = startread + (unsigned long )lencopy;
  if (bytesperline > remain) {
    lencopy = remain;
  } else {
    lencopy = bytesperline;
  }
  if ((unsigned long )((char *)startwrite + (unsigned long )lencopy) > (unsigned long )((char *)outp + buf->vb.size)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :Overflow of %zi bytes past buffer end(2)\n", (char *)(& dev->name),
             "em28xx_copy_video", ((long )startwrite - (long )outp) + ((long )((unsigned long )lencopy) - (long )buf->vb.size));
    } else {
    }
    remain = (int )((unsigned int )((long )((char *)outp + buf->vb.size)) - (unsigned int )((long )startwrite));
    lencopy = remain;
  } else {
  }
  if (lencopy <= 0) {
    goto ldv_46318;
  } else {
  }
  __len___0 = (size_t )lencopy;
  __ret___0 = memcpy(startwrite, (void const *)startread, __len___0);
  remain = remain - lencopy;
  ldv_46323: ;
  if (remain > 0) {
    goto ldv_46322;
  } else {
    goto ldv_46318;
  }
  ldv_46318:
  dma_q->pos = (int )((unsigned int )dma_q->pos + (unsigned int )len);
  return;
}
}
static void em28xx_copy_vbi(struct em28xx *dev , struct em28xx_dmaqueue *dma_q , struct em28xx_buffer *buf ,
                            unsigned char *p , unsigned char *outp , unsigned long len )
{ void *startwrite ;
  void *startread ;
  int offset ;
  int bytesperline ;
  size_t __len ;
  void *__ret ;
  {
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :dev is null\n", (char *)(& dev->name), "em28xx_copy_vbi");
    } else {
    }
    return;
  } else {
  }
  bytesperline = (int )dev->vbi_width;
  if ((unsigned long )dma_q == (unsigned long )((struct em28xx_dmaqueue *)0)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :dma_q is null\n", (char *)(& dev->name), "em28xx_copy_vbi");
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((struct em28xx_buffer *)0)) {
    return;
  } else {
  }
  if ((unsigned long )p == (unsigned long )((unsigned char *)0)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :p is null\n", (char *)(& dev->name), "em28xx_copy_vbi");
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )outp == (unsigned long )((unsigned char *)0)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :outp is null\n", (char *)(& dev->name), "em28xx_copy_vbi");
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )dma_q->pos + len > buf->vb.size) {
    len = buf->vb.size - (unsigned long )dma_q->pos;
  } else {
  }
  startread = (void *)p;
  startwrite = (void *)outp + (unsigned long )dma_q->pos;
  offset = dma_q->pos;
  if (buf->top_field == 0) {
    startwrite = startwrite + (unsigned long )(dev->vbi_height * (unsigned int )bytesperline);
    offset = (int )(dev->vbi_height * (unsigned int )bytesperline + (unsigned int )offset);
  } else {
  }
  __len = len;
  __ret = memcpy(startwrite, (void const *)startread, __len);
  dma_q->pos = (int )((unsigned int )dma_q->pos + (unsigned int )len);
  return;
}
}
__inline static void print_err_status(struct em28xx *dev , int packet , int status )
{ char *errmsg ;
  {
  errmsg = (char *)"Unknown";
  switch (status) {
  case -2:
  errmsg = (char *)"unlinked synchronuously";
  goto ldv_46347;
  case -104:
  errmsg = (char *)"unlinked asynchronuously";
  goto ldv_46347;
  case -63:
  errmsg = (char *)"Buffer error (overrun)";
  goto ldv_46347;
  case -32:
  errmsg = (char *)"Stalled (device not responding)";
  goto ldv_46347;
  case -75:
  errmsg = (char *)"Babble (bad cable?)";
  goto ldv_46347;
  case -71:
  errmsg = (char *)"Bit-stuff error (bad cable?)";
  goto ldv_46347;
  case -84:
  errmsg = (char *)"CRC/Timeout (could be anything)";
  goto ldv_46347;
  case -62:
  errmsg = (char *)"Device does not respond";
  goto ldv_46347;
  }
  ldv_46347: ;
  if (packet < 0) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :URB status %d [%s].\n", (char *)(& dev->name), "print_err_status",
             status, errmsg);
    } else {
    }
  } else
  if (isoc_debug != 0U) {
    printk("\016%s %s :URB packet %d, status %d [%s].\n", (char *)(& dev->name), "print_err_status",
           packet, status, errmsg);
  } else {
  }
  return;
}
}
__inline static void get_next_buf(struct em28xx_dmaqueue *dma_q , struct em28xx_buffer **buf )
{ struct em28xx *dev ;
  struct em28xx_dmaqueue const *__mptr ;
  char *outp ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  void *tmp___0 ;
  {
  __mptr = (struct em28xx_dmaqueue const *)dma_q;
  dev = (struct em28xx *)__mptr + 0xffffffffffffed78UL;
  tmp = list_empty((struct list_head const *)(& dma_q->active));
  if (tmp != 0) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :No active queue to serve\n", (char *)(& dev->name), "get_next_buf");
    } else {
    }
    dev->isoc_ctl.vid_buf = 0;
    *buf = 0;
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)dma_q->active.next;
  *buf = (struct em28xx_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
  tmp___0 = videobuf_to_vmalloc(& (*buf)->vb);
  outp = (char *)tmp___0;
  memset((void *)outp, 0, (*buf)->vb.size);
  dev->isoc_ctl.vid_buf = *buf;
  return;
}
}
__inline static void vbi_get_next_buf(struct em28xx_dmaqueue *dma_q , struct em28xx_buffer **buf )
{ struct em28xx *dev ;
  struct em28xx_dmaqueue const *__mptr ;
  char *outp ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  void *tmp___0 ;
  {
  __mptr = (struct em28xx_dmaqueue const *)dma_q;
  dev = (struct em28xx *)__mptr + 0xffffffffffffed08UL;
  tmp = list_empty((struct list_head const *)(& dma_q->active));
  if (tmp != 0) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :No active queue to serve\n", (char *)(& dev->name), "vbi_get_next_buf");
    } else {
    }
    dev->isoc_ctl.vbi_buf = 0;
    *buf = 0;
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)dma_q->active.next;
  *buf = (struct em28xx_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
  tmp___0 = videobuf_to_vmalloc(& (*buf)->vb);
  outp = (char *)tmp___0;
  memset((void *)outp, 0, (*buf)->vb.size);
  dev->isoc_ctl.vbi_buf = *buf;
  return;
}
}
__inline static int em28xx_isoc_copy(struct em28xx *dev , struct urb *urb )
{ struct em28xx_buffer *buf ;
  struct em28xx_dmaqueue *dma_q ;
  unsigned char *outp ;
  int i ;
  int len ;
  int rc ;
  unsigned char *p ;
  void *tmp ;
  int status ;
  char *tmp___0 ;
  void *tmp___1 ;
  {
  dma_q = & dev->vidq;
  outp = 0;
  len = 0;
  rc = 1;
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    return (0);
  } else {
  }
  if (((unsigned int )dev->state & 2U) != 0U || ((unsigned int )dev->state & 4U) != 0U) {
    return (0);
  } else {
  }
  if (urb->status < 0) {
    print_err_status(dev, -1, urb->status);
    if (urb->status == -2) {
      return (0);
    } else {
    }
  } else {
  }
  buf = dev->isoc_ctl.vid_buf;
  if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
    tmp = videobuf_to_vmalloc(& buf->vb);
    outp = (unsigned char *)tmp;
  } else {
  }
  i = 0;
  goto ldv_46393;
  ldv_46392:
  status = urb->iso_frame_desc[i].status;
  if (status < 0) {
    print_err_status(dev, i, status);
    if (urb->iso_frame_desc[i].status != -71) {
      goto ldv_46390;
    } else {
    }
  } else {
  }
  len = (int )(urb->iso_frame_desc[i].actual_length - 4U);
  if (urb->iso_frame_desc[i].actual_length == 0U) {
    goto ldv_46390;
  } else {
  }
  if (urb->iso_frame_desc[i].actual_length > (unsigned int )dev->max_pkt_size) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :packet bigger than packet size", (char *)(& dev->name), "em28xx_isoc_copy");
    } else {
    }
    goto ldv_46390;
  } else {
  }
  p = (unsigned char *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
  if (((unsigned int )*p == 51U && (unsigned int )*(p + 1UL) == 149U) && (unsigned int )*(p + 2UL) == 0U) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :VBI HEADER!!!\n", (char *)(& dev->name), "em28xx_isoc_copy");
    } else {
    }
    goto ldv_46390;
  } else {
  }
  if ((unsigned int )*p == 34U && (unsigned int )*(p + 1UL) == 90U) {
    if (isoc_debug != 0U) {
      if ((int )*(p + 2UL) & 1) {
        tmp___0 = (char *)"odd";
      } else {
        tmp___0 = (char *)"even";
      }
      printk("\016%s %s :Video frame %d, length=%i, %s\n", (char *)(& dev->name),
             "em28xx_isoc_copy", (int )*(p + 2UL), len, tmp___0);
    } else {
    }
    if (dev->progressive != 0 || ((int )*(p + 2UL) & 1) == 0) {
      if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
        buffer_filled(dev, dma_q, buf);
      } else {
      }
      get_next_buf(dma_q, & buf);
      if ((unsigned long )buf == (unsigned long )((struct em28xx_buffer *)0)) {
        outp = 0;
      } else {
        tmp___1 = videobuf_to_vmalloc(& buf->vb);
        outp = (unsigned char *)tmp___1;
      }
    } else {
    }
    if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
      if ((int )*(p + 2UL) & 1) {
        buf->top_field = 0;
      } else {
        buf->top_field = 1;
      }
    } else {
    }
    dma_q->pos = 0;
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
    if ((unsigned int )*p != 136U && (unsigned int )*p != 34U) {
      if (isoc_debug != 0U) {
        printk("\016%s %s :frame is not complete\n", (char *)(& dev->name), "em28xx_isoc_copy");
      } else {
      }
      len = len + 4;
    } else {
      p = p + 4UL;
    }
    em28xx_copy_video(dev, dma_q, buf, p, outp, (unsigned long )len);
  } else {
  }
  ldv_46390:
  i = i + 1;
  ldv_46393: ;
  if (urb->number_of_packets > i) {
    goto ldv_46392;
  } else {
    goto ldv_46394;
  }
  ldv_46394: ;
  return (rc);
}
}
__inline static int em28xx_isoc_copy_vbi(struct em28xx *dev , struct urb *urb )
{ struct em28xx_buffer *buf ;
  struct em28xx_buffer *vbi_buf ;
  struct em28xx_dmaqueue *dma_q ;
  struct em28xx_dmaqueue *vbi_dma_q ;
  unsigned char *outp ;
  unsigned char *vbioutp ;
  int i ;
  int len ;
  int rc ;
  unsigned char *p ;
  int vbi_size ;
  void *tmp ;
  void *tmp___0 ;
  int status ;
  void *tmp___1 ;
  int vbi_data_len ;
  void *tmp___2 ;
  char *tmp___3 ;
  {
  dma_q = & dev->vidq;
  vbi_dma_q = & dev->vbiq;
  outp = 0;
  vbioutp = 0;
  len = 0;
  rc = 1;
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    return (0);
  } else {
  }
  if (((unsigned int )dev->state & 2U) != 0U || ((unsigned int )dev->state & 4U) != 0U) {
    return (0);
  } else {
  }
  if (urb->status < 0) {
    print_err_status(dev, -1, urb->status);
    if (urb->status == -2) {
      return (0);
    } else {
    }
  } else {
  }
  buf = dev->isoc_ctl.vid_buf;
  if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
    tmp = videobuf_to_vmalloc(& buf->vb);
    outp = (unsigned char *)tmp;
  } else {
  }
  vbi_buf = dev->isoc_ctl.vbi_buf;
  if ((unsigned long )vbi_buf != (unsigned long )((struct em28xx_buffer *)0)) {
    tmp___0 = videobuf_to_vmalloc(& vbi_buf->vb);
    vbioutp = (unsigned char *)tmp___0;
  } else {
  }
  i = 0;
  goto ldv_46415;
  ldv_46414:
  status = urb->iso_frame_desc[i].status;
  if (status < 0) {
    print_err_status(dev, i, status);
    if (urb->iso_frame_desc[i].status != -71) {
      goto ldv_46411;
    } else {
    }
  } else {
  }
  len = (int )urb->iso_frame_desc[i].actual_length;
  if (urb->iso_frame_desc[i].actual_length == 0U) {
    goto ldv_46411;
  } else {
  }
  if (urb->iso_frame_desc[i].actual_length > (unsigned int )dev->max_pkt_size) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :packet bigger than packet size", (char *)(& dev->name), "em28xx_isoc_copy_vbi");
    } else {
    }
    goto ldv_46411;
  } else {
  }
  p = (unsigned char *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
  if ((unsigned int )*p == 51U && (unsigned int )*(p + 1UL) == 149U) {
    dev->capture_type = 0;
    dev->vbi_read = 0;
    if (isoc_debug != 0U) {
      printk("\016%s %s :VBI START HEADER!!!\n", (char *)(& dev->name), "em28xx_isoc_copy_vbi");
    } else {
    }
    dev->cur_field = *(p + 2UL);
    p = p + 4UL;
    len = len + -4;
  } else
  if ((((unsigned int )*p == 136U && (unsigned int )*(p + 1UL) == 136U) && (unsigned int )*(p + 2UL) == 136U) && (unsigned int )*(p + 3UL) == 136U) {
    p = p + 4UL;
    len = len + -4;
  } else
  if ((unsigned int )*p == 34U && (unsigned int )*(p + 1UL) == 90U) {
    p = p + 4UL;
    len = len + -4;
  } else {
  }
  vbi_size = (int )(dev->vbi_width * dev->vbi_height);
  if (dev->capture_type == 0) {
    if (dev->vbi_read >= vbi_size) {
      if (isoc_debug != 0U) {
        printk("\016%s %s :dev->vbi_read > vbi_size\n", (char *)(& dev->name), "em28xx_isoc_copy_vbi");
      } else {
      }
    } else
    if (dev->vbi_read + len < vbi_size) {
      if (dev->vbi_read == 0 && ((int )dev->cur_field & 1) == 0) {
        if ((unsigned long )vbi_buf != (unsigned long )((struct em28xx_buffer *)0)) {
          vbi_buffer_filled(dev, vbi_dma_q, vbi_buf);
        } else {
        }
        vbi_get_next_buf(vbi_dma_q, & vbi_buf);
        if ((unsigned long )vbi_buf == (unsigned long )((struct em28xx_buffer *)0)) {
          vbioutp = 0;
        } else {
          tmp___1 = videobuf_to_vmalloc(& vbi_buf->vb);
          vbioutp = (unsigned char *)tmp___1;
        }
      } else {
      }
      if (dev->vbi_read == 0) {
        vbi_dma_q->pos = 0;
        if ((unsigned long )vbi_buf != (unsigned long )((struct em28xx_buffer *)0)) {
          if ((int )dev->cur_field & 1) {
            vbi_buf->top_field = 0;
          } else {
            vbi_buf->top_field = 1;
          }
        } else {
        }
      } else {
      }
      dev->vbi_read = dev->vbi_read + len;
      em28xx_copy_vbi(dev, vbi_dma_q, vbi_buf, p, vbioutp, (unsigned long )len);
    } else {
      vbi_data_len = vbi_size - dev->vbi_read;
      dev->vbi_read = dev->vbi_read + vbi_data_len;
      em28xx_copy_vbi(dev, vbi_dma_q, vbi_buf, p, vbioutp, (unsigned long )vbi_data_len);
      dev->capture_type = 1;
      p = p + (unsigned long )vbi_data_len;
      len = len - vbi_data_len;
    }
  } else {
  }
  if (dev->capture_type == 1) {
    dev->capture_type = 2;
    if (dev->progressive != 0 || ((int )dev->cur_field & 1) == 0) {
      if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
        buffer_filled(dev, dma_q, buf);
      } else {
      }
      get_next_buf(dma_q, & buf);
      if ((unsigned long )buf == (unsigned long )((struct em28xx_buffer *)0)) {
        outp = 0;
      } else {
        tmp___2 = videobuf_to_vmalloc(& buf->vb);
        outp = (unsigned char *)tmp___2;
      }
    } else {
    }
    if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
      if ((int )dev->cur_field & 1) {
        buf->top_field = 0;
      } else {
        buf->top_field = 1;
      }
    } else {
    }
    dma_q->pos = 0;
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0) && dev->capture_type == 2) {
    if ((((len > 3 && (unsigned int )*p == 136U) && (unsigned int )*(p + 1UL) == 136U) && (unsigned int )*(p + 2UL) == 136U) && (unsigned int )*(p + 3UL) == 136U) {
      p = p + 4UL;
      len = len + -4;
    } else {
    }
    if ((len > 3 && (unsigned int )*p == 34U) && (unsigned int )*(p + 1UL) == 90U) {
      if (isoc_debug != 0U) {
        if ((int )*(p + 2UL) & 1) {
          tmp___3 = (char *)"odd";
        } else {
          tmp___3 = (char *)"even";
        }
        printk("\016%s %s :Video frame %d, len=%i, %s\n", (char *)(& dev->name), "em28xx_isoc_copy_vbi",
               (int )*(p + 2UL), len, tmp___3);
      } else {
      }
      p = p + 4UL;
      len = len + -4;
    } else {
    }
    if (len > 0) {
      em28xx_copy_video(dev, dma_q, buf, p, outp, (unsigned long )len);
    } else {
    }
  } else {
  }
  ldv_46411:
  i = i + 1;
  ldv_46415: ;
  if (urb->number_of_packets > i) {
    goto ldv_46414;
  } else {
    goto ldv_46416;
  }
  ldv_46416: ;
  return (rc);
}
}
static int buffer_setup(struct videobuf_queue *vq , unsigned int *count , unsigned int *size )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_frequency f ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)vq->priv_data;
  dev = fh->dev;
  *size = (unsigned int )((((fh->dev)->width * (fh->dev)->height) * (dev->format)->depth + 7) >> 3);
  if (*count == 0U) {
    *count = 8U;
  } else {
  }
  if (*count <= 3U) {
    *count = 4U;
  } else {
  }
  memset((void *)(& f), 0, 44UL);
  f.frequency = (__u32 )dev->ctl_freq;
  if (fh->radio != 0) {
    f.type = 1U;
  } else {
    f.type = 2U;
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46431;
  ldv_46430: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency * ))0)) {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, & f);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46431: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46430;
  } else {
    goto ldv_46432;
  }
  ldv_46432: ;
  return (0);
}
}
static void free_buffer(struct videobuf_queue *vq , struct em28xx_buffer *buf )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  unsigned long flags ;
  struct thread_info *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  fh = (struct em28xx_fh *)vq->priv_data;
  dev = fh->dev;
  flags = 0UL;
  tmp = current_thread_info();
  if (((unsigned long )tmp->preempt_count & 134217472UL) != 0UL) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/media/usb/em28xx/em28xx.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-video.c.prepared"),
                         "i" (795), "i" (12UL));
    ldv_46440: ;
    goto ldv_46440;
  } else {
  }
  tmp___0 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if ((unsigned long )dev->isoc_ctl.vid_buf == (unsigned long )buf) {
    dev->isoc_ctl.vid_buf = 0;
  } else {
  }
  spin_unlock_irqrestore(& dev->slock, flags);
  videobuf_vmalloc_free(& buf->vb);
  buf->vb.state = 0;
  return;
}
}
static int buffer_prepare(struct videobuf_queue *vq , struct videobuf_buffer *vb ,
                          enum v4l2_field field )
{ struct em28xx_fh *fh ;
  struct em28xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct em28xx *dev ;
  int rc ;
  int urb_init ;
  int tmp ;
  {
  fh = (struct em28xx_fh *)vq->priv_data;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  dev = fh->dev;
  rc = 0;
  urb_init = 0;
  buf->vb.size = (unsigned long )((((fh->dev)->width * (fh->dev)->height) * (dev->format)->depth + 7) >> 3);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  buf->vb.width = (unsigned int )dev->width;
  buf->vb.height = (unsigned int )dev->height;
  buf->vb.field = field;
  if ((unsigned int )buf->vb.state == 0U) {
    rc = videobuf_iolock(vq, & buf->vb, 0);
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  if (dev->isoc_ctl.analog_bufs.num_bufs == 0) {
    urb_init = 1;
  } else {
  }
  if (urb_init != 0) {
    tmp = em28xx_vbi_supported(dev);
    if (tmp == 1) {
      rc = em28xx_init_isoc(dev, 1, 64, 5, dev->max_pkt_size, & em28xx_isoc_copy_vbi);
    } else {
      rc = em28xx_init_isoc(dev, 1, 64, 5, dev->max_pkt_size, & em28xx_isoc_copy);
    }
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  free_buffer(vq, buf);
  return (rc);
}
}
static void buffer_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{ struct em28xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct em28xx_dmaqueue *vidq ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  fh = (struct em28xx_fh *)vq->priv_data;
  dev = fh->dev;
  vidq = & dev->vidq;
  buf->vb.state = 2;
  list_add_tail(& buf->vb.queue, & vidq->active);
  return;
}
}
static void buffer_release(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{ struct em28xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  fh = (struct em28xx_fh *)vq->priv_data;
  dev = fh->dev;
  if (isoc_debug != 0U) {
    printk("\016%s %s :em28xx: called buffer_release\n", (char *)(& dev->name), "buffer_release");
  } else {
  }
  free_buffer(vq, buf);
  return;
}
}
static struct videobuf_queue_ops em28xx_video_qops = {& buffer_setup, & buffer_prepare, & buffer_queue, & buffer_release};
static void video_mux(struct em28xx *dev , int index )
{ struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct v4l2_subdev *__sd___2 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  dev->ctl_input = (unsigned int )index;
  dev->ctl_ainput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )index)->amux;
  dev->ctl_aoutput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )index)->aout;
  if (dev->ctl_aoutput == 0U) {
    dev->ctl_aoutput = 1U;
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46488;
  ldv_46487: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                u32 ))0)) {
    (*(((__sd->ops)->video)->s_routing))(__sd, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )index)->vmux,
                                         0U, 0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46488: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46487;
  } else {
    goto ldv_46489;
  }
  ldv_46489: ;
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    if (dev->i2s_speed != 0U) {
      __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
      goto ldv_46496;
      ldv_46495: ;
      if ((unsigned long )(__sd___0->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd___0->ops)->audio)->s_i2s_clock_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                   u32 ))0)) {
        (*(((__sd___0->ops)->audio)->s_i2s_clock_freq))(__sd___0, dev->i2s_speed);
      } else {
      }
      __mptr___2 = (struct list_head const *)__sd___0->list.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
      ldv_46496: ;
      if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
        goto ldv_46495;
      } else {
        goto ldv_46497;
      }
      ldv_46497: ;
    } else {
    }
    __mptr___3 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
    goto ldv_46504;
    ldv_46503: ;
    if ((unsigned long )(__sd___1->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd___1->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ))0)) {
      (*(((__sd___1->ops)->audio)->s_routing))(__sd___1, dev->ctl_ainput, 68U, 0U);
    } else {
    }
    __mptr___4 = (struct list_head const *)__sd___1->list.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
    ldv_46504: ;
    if ((unsigned long )(& __sd___1->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_46503;
    } else {
      goto ldv_46505;
    }
    ldv_46505: ;
  } else {
  }
  if ((unsigned int )dev->board.adecoder != 0U) {
    __mptr___5 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___5 + 0xffffffffffffff80UL;
    goto ldv_46512;
    ldv_46511: ;
    if ((unsigned long )(__sd___2->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd___2->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ))0)) {
      (*(((__sd___2->ops)->audio)->s_routing))(__sd___2, dev->ctl_ainput, dev->ctl_aoutput,
                                               0U);
    } else {
    }
    __mptr___6 = (struct list_head const *)__sd___2->list.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___6 + 0xffffffffffffff80UL;
    ldv_46512: ;
    if ((unsigned long )(& __sd___2->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_46511;
    } else {
      goto ldv_46513;
    }
    ldv_46513: ;
  } else {
  }
  em28xx_audio_analog_set(dev);
  return;
}
}
static int res_get(struct em28xx_fh *fh , unsigned int bit )
{ struct em28xx *dev ;
  {
  dev = fh->dev;
  if ((fh->resources & bit) != 0U) {
    return (1);
  } else {
  }
  if ((dev->resources & bit) != 0U) {
    return (0);
  } else {
  }
  fh->resources = fh->resources | bit;
  dev->resources = dev->resources | bit;
  if (video_debug != 0U) {
    printk("\016%s %s :res: get %d\n", (char *)(& dev->name), "res_get", bit);
  } else {
  }
  return (1);
}
}
static int res_check(struct em28xx_fh *fh , unsigned int bit )
{
  {
  return ((int )(fh->resources & bit));
}
}
static int res_locked(struct em28xx *dev , unsigned int bit )
{
  {
  return ((int )(dev->resources & bit));
}
}
static void res_free(struct em28xx_fh *fh , unsigned int bits )
{ struct em28xx *dev ;
  long tmp ;
  {
  dev = fh->dev;
  tmp = ldv__builtin_expect((fh->resources & bits) != bits, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/media/usb/em28xx/em28xx.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-video.c.prepared"),
                         "i" (971), "i" (12UL));
    ldv_46533: ;
    goto ldv_46533;
  } else {
  }
  fh->resources = fh->resources & ~ bits;
  dev->resources = dev->resources & ~ bits;
  if (video_debug != 0U) {
    printk("\016%s %s :res: put %d\n", (char *)(& dev->name), "res_free", bits);
  } else {
  }
  return;
}
}
static int get_ressource(struct em28xx_fh *fh )
{
  {
  switch ((unsigned int )fh->type) {
  case 1: ;
  return (1);
  case 4: ;
  return (2);
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/media/usb/em28xx/em28xx.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-video.c.prepared"),
                       "i" (986), "i" (12UL));
  ldv_46541: ;
  goto ldv_46541;
  return (0);
  }
}
}
static int ac97_queryctrl(struct v4l2_queryctrl *qc )
{ int i ;
  size_t __len ;
  void *__ret ;
  {
  i = 0;
  goto ldv_46552;
  ldv_46551: ;
  if (qc->id != 0U && qc->id == ac97_qctrl[i].id) {
    __len = 68UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)qc, (void const *)(& ac97_qctrl) + (unsigned long )i,
                       __len);
    } else {
      __ret = memcpy((void *)qc, (void const *)(& ac97_qctrl) + (unsigned long )i,
                               __len);
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_46552: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_46551;
  } else {
    goto ldv_46553;
  }
  ldv_46553: ;
  return (1);
}
}
static int ac97_get_ctrl(struct em28xx *dev , struct v4l2_control *ctrl )
{
  {
  switch (ctrl->id) {
  case 9963785:
  ctrl->value = dev->mute;
  return (0);
  case 9963781:
  ctrl->value = dev->volume;
  return (0);
  default: ;
  return (1);
  }
}
}
static int ac97_set_ctrl(struct em28xx *dev , struct v4l2_control const *ctrl )
{ int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_46570;
  ldv_46569: ;
  if ((unsigned int )ctrl->id == ac97_qctrl[i].id) {
    goto handle;
  } else {
  }
  i = i + 1;
  ldv_46570: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_46569;
  } else {
    goto ldv_46571;
  }
  ldv_46571: ;
  return (1);
  handle: ;
  if ((__s32 )ctrl->value < ac97_qctrl[i].minimum || (__s32 )ctrl->value > ac97_qctrl[i].maximum) {
    return (-34);
  } else {
  }
  switch (ctrl->id) {
  case 9963785:
  dev->mute = ctrl->value;
  goto ldv_46573;
  case 9963781:
  dev->volume = ctrl->value;
  goto ldv_46573;
  }
  ldv_46573:
  tmp = em28xx_audio_analog_set(dev);
  return (tmp);
}
}
static int check_dev(struct em28xx *dev )
{
  {
  if (((unsigned int )dev->state & 2U) != 0U) {
    printk("\v%s: v4l2 ioctl: device not present\n", (char *)(& dev->name));
    return (-19);
  } else {
  }
  if (((unsigned int )dev->state & 4U) != 0U) {
    printk("\v%s: v4l2 ioctl: device is misconfigured; close and open it again\n",
           (char *)(& dev->name));
    return (-5);
  } else {
  }
  return (0);
}
}
static void get_scale(struct em28xx *dev , unsigned int width , unsigned int height ,
                      unsigned int *hscale , unsigned int *vscale )
{ unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  {
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  *hscale = (unsigned int )(((unsigned long )maxw << 12) / (unsigned long )width) - 4096U;
  if (*hscale > 16383U) {
    *hscale = 16383U;
  } else {
  }
  *vscale = (unsigned int )(((unsigned long )maxh << 12) / (unsigned long )height) - 4096U;
  if (*vscale > 16383U) {
    *vscale = 16383U;
  } else {
  }
  return;
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  f->fmt.pix.width = (__u32 )dev->width;
  f->fmt.pix.height = (__u32 )dev->height;
  f->fmt.pix.pixelformat = (dev->format)->fourcc;
  f->fmt.pix.bytesperline = (__u32 )((dev->width * (dev->format)->depth + 7) >> 3);
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * (__u32 )dev->height;
  f->fmt.pix.colorspace = 1U;
  if (dev->progressive != 0) {
    f->fmt.pix.field = 1U;
  } else
  if (dev->interlaced != 0) {
    f->fmt.pix.field = 4U;
  } else {
    f->fmt.pix.field = 2U;
  }
  return (0);
}
}
static struct em28xx_fmt *format_by_fourcc(unsigned int fourcc )
{ unsigned int i ;
  {
  i = 0U;
  goto ldv_46601;
  ldv_46600: ;
  if (format[i].fourcc == fourcc) {
    return ((struct em28xx_fmt *)(& format) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_46601: ;
  if (i <= 5U) {
    goto ldv_46600;
  } else {
    goto ldv_46602;
  }
  ldv_46602: ;
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  unsigned int width ;
  unsigned int height ;
  unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  unsigned int hscale ;
  unsigned int vscale ;
  struct em28xx_fmt *fmt ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  width = f->fmt.pix.width;
  height = f->fmt.pix.height;
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  if ((unsigned long )fmt == (unsigned long )((struct em28xx_fmt *)0)) {
    if (video_debug != 0U) {
      printk("\016%s %s :Fourcc format (%08x) invalid.\n", (char *)(& dev->name),
             "vidioc_try_fmt_vid_cap", f->fmt.pix.pixelformat);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    if ((maxh * 3U) / 4U >= height) {
      height = maxh / 2U;
    } else {
      height = maxh;
    }
    if ((maxw * 3U) / 4U >= width) {
      width = maxw / 2U;
    } else {
      width = maxw;
    }
    if (width == maxw && height == maxh) {
      width = width / 2U;
    } else {
    }
  } else {
    v4l_bound_align_image(& width, 48U, maxw, 1U, & height, 32U, maxh, 1U, 0U);
  }
  get_scale(dev, width, height, & hscale, & vscale);
  width = (unsigned int )(((unsigned long )maxw << 12) / (unsigned long )((long )hscale + 4096L));
  height = (unsigned int )(((unsigned long )maxh << 12) / (unsigned long )((long )vscale + 4096L));
  f->fmt.pix.width = width;
  f->fmt.pix.height = height;
  f->fmt.pix.pixelformat = fmt->fourcc;
  f->fmt.pix.bytesperline = (__u32 )((dev->width * fmt->depth + 7) >> 3);
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * height;
  f->fmt.pix.colorspace = 1U;
  if (dev->progressive != 0) {
    f->fmt.pix.field = 1U;
  } else
  if (dev->interlaced != 0) {
    f->fmt.pix.field = 4U;
  } else {
    f->fmt.pix.field = 2U;
  }
  return (0);
}
}
static int em28xx_set_video_format(struct em28xx *dev , unsigned int fourcc , unsigned int width ,
                                   unsigned int height )
{ struct em28xx_fmt *fmt ;
  {
  fmt = format_by_fourcc(fourcc);
  if ((unsigned long )fmt == (unsigned long )((struct em28xx_fmt *)0)) {
    return (-22);
  } else {
  }
  dev->format = fmt;
  dev->width = (int )width;
  dev->height = (int )height;
  get_scale(dev, (unsigned int )dev->width, (unsigned int )dev->height, & dev->hscale,
            & dev->vscale);
  em28xx_set_alternate(dev);
  em28xx_resolution_set(dev);
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  vidioc_try_fmt_vid_cap(file, priv, f);
  tmp = videobuf_queue_is_busy(& fh->vb_vidq);
  if (tmp != 0) {
    printk("\v%s: %s queue busy\n", (char *)(& dev->name), "vidioc_s_fmt_vid_cap");
    return (-16);
  } else {
  }
  tmp___0 = em28xx_set_video_format(dev, f->fmt.pix.pixelformat, f->fmt.pix.width,
                                    f->fmt.pix.height);
  return (tmp___0);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *norm )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  *norm = dev->norm;
  return (0);
}
}
static int vidioc_querystd(struct file *file , void *priv , v4l2_std_id *norm )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46656;
  ldv_46655: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->querystd != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               v4l2_std_id * ))0)) {
    (*(((__sd->ops)->video)->querystd))(__sd, norm);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46656: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46655;
  } else {
    goto ldv_46657;
  }
  ldv_46657: ;
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id *norm )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_format f ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  dev->norm = *norm;
  f.fmt.pix.width = (__u32 )dev->width;
  f.fmt.pix.height = (__u32 )dev->height;
  vidioc_try_fmt_vid_cap(file, priv, & f);
  dev->width = (int )f.fmt.pix.width;
  dev->height = (int )f.fmt.pix.height;
  get_scale(dev, (unsigned int )dev->width, (unsigned int )dev->height, & dev->hscale,
            & dev->vscale);
  em28xx_resolution_set(dev);
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46673;
  ldv_46672: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         v4l2_std_id ))0)) {
    (*(((__sd->ops)->core)->s_std))(__sd, dev->norm);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46673: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46672;
  } else {
    goto ldv_46674;
  }
  ldv_46674: ;
  return (0);
}
}
static int vidioc_g_parm(struct file *file , void *priv , struct v4l2_streamparm *p )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  long tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = 0;
  if (p->type != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    __err = 0L;
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_46691;
    ldv_46690: ;
    if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->g_parm != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               struct v4l2_streamparm * ))0)) {
      tmp = (*(((__sd->ops)->video)->g_parm))(__sd, p);
      __err = (long )tmp;
    } else {
    }
    if (__err != 0L && __err != -515L) {
      goto ldv_46689;
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_46691: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_46690;
    } else {
      goto ldv_46689;
    }
    ldv_46689: ;
    if (__err != -515L) {
      tmp___0 = __err;
    } else {
      tmp___0 = 0L;
    }
    rc = (int )tmp___0;
  } else {
    v4l2_video_std_frame_period((int )dev->norm, & p->parm.capture.timeperframe);
  }
  return (rc);
}
}
static int vidioc_s_parm(struct file *file , void *priv , struct v4l2_streamparm *p )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  long tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )*((unsigned char *)dev + 464UL) == 0U) {
    return (-22);
  } else {
  }
  if (p->type != 1U) {
    return (-22);
  } else {
  }
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46709;
  ldv_46708: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_parm != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             struct v4l2_streamparm * ))0)) {
    tmp = (*(((__sd->ops)->video)->s_parm))(__sd, p);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_46707;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46709: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46708;
  } else {
    goto ldv_46707;
  }
  ldv_46707: ;
  if (__err != -515L) {
    tmp___0 = __err;
  } else {
    tmp___0 = 0L;
  }
  return ((int )tmp___0);
}
}
static char const *iname[10U] =
  { 0, "Composite1", "Composite2", "Composite3",
        "Composite4", "S-Video", "Television", "Cable TV",
        "DVB", "for debug only"};
static int vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  unsigned int n ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  n = i->index;
  if (n > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type == 0U) {
    return (-22);
  } else {
  }
  i->index = n;
  i->type = 2U;
  strcpy((char *)(& i->name), iname[(unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type]);
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type == 6U || (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type == 7U) {
    i->type = 1U;
  } else {
  }
  i->std = (dev->vdev)->tvnorms;
  return (0);
}
}
static int vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  *i = dev->ctl_input;
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *priv , unsigned int i )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (i > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )i)->type == 0U) {
    return (-22);
  } else {
  }
  video_mux(dev, (int )i);
  return (0);
}
}
static int vidioc_g_audio(struct file *file , void *priv , struct v4l2_audio *a )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )*((unsigned char *)dev + 784UL) == 0U) {
    return (-22);
  } else {
  }
  switch (a->index) {
  case 0:
  strcpy((char *)(& a->name), "Television");
  goto ldv_46744;
  case 1:
  strcpy((char *)(& a->name), "Line In");
  goto ldv_46744;
  case 2:
  strcpy((char *)(& a->name), "Television alt");
  goto ldv_46744;
  case 3:
  strcpy((char *)(& a->name), "Phone");
  goto ldv_46744;
  case 4:
  strcpy((char *)(& a->name), "Mic");
  goto ldv_46744;
  case 5:
  strcpy((char *)(& a->name), "CD");
  goto ldv_46744;
  case 6:
  strcpy((char *)(& a->name), "Aux");
  goto ldv_46744;
  case 7:
  strcpy((char *)(& a->name), "PCM");
  goto ldv_46744;
  default: ;
  return (-22);
  }
  ldv_46744:
  a->index = dev->ctl_ainput;
  a->capability = 1U;
  return (0);
}
}
static int vidioc_s_audio(struct file *file , void *priv , struct v4l2_audio const *a )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )*((unsigned char *)dev + 784UL) == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )a->index > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )a->index)->type == 0U) {
    return (-22);
  } else {
  }
  dev->ctl_ainput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )a->index)->amux;
  dev->ctl_aoutput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )a->index)->aout;
  if (dev->ctl_aoutput == 0U) {
    dev->ctl_aoutput = 1U;
  } else {
  }
  return (0);
}
}
static int vidioc_queryctrl(struct file *file , void *priv , struct v4l2_queryctrl *qc )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int id ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  id = (int )qc->id;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  memset((void *)qc, 0, 68UL);
  qc->id = (__u32 )id;
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    rc = ac97_queryctrl(qc);
    if (rc == 0) {
      return (0);
    } else {
    }
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46775;
  ldv_46774: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->queryctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             struct v4l2_queryctrl * ))0)) {
    (*(((__sd->ops)->core)->queryctrl))(__sd, qc);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46775: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46774;
  } else {
    goto ldv_46776;
  }
  ldv_46776: ;
  if (qc->type != 0U) {
    return (0);
  } else {
    return (-22);
  }
}
}
static int check_subdev_ctrl(struct em28xx *dev , int id )
{ struct v4l2_queryctrl qc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  memset((void *)(& qc), 0, 68UL);
  qc.id = (__u32 )id;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46788;
  ldv_46787: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->queryctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             struct v4l2_queryctrl * ))0)) {
    (*(((__sd->ops)->core)->queryctrl))(__sd, & qc);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46788: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46787;
  } else {
    goto ldv_46789;
  }
  ldv_46789: ;
  if (qc.type != 0U) {
    return (0);
  } else {
    return (-22);
  }
}
}
static int vidioc_g_ctrl(struct file *file , void *priv , struct v4l2_control *ctrl )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  rc = 0;
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    rc = ac97_get_ctrl(dev, ctrl);
  } else {
    rc = 1;
  }
  if (rc == 1) {
    tmp = check_subdev_ctrl(dev, (int )ctrl->id);
    if (tmp != 0) {
      return (-22);
    } else {
    }
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_46804;
    ldv_46803: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            struct v4l2_control * ))0)) {
      (*(((__sd->ops)->core)->g_ctrl))(__sd, ctrl);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_46804: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_46803;
    } else {
      goto ldv_46805;
    }
    ldv_46805:
    rc = 0;
  } else {
  }
  return (rc);
}
}
static int vidioc_s_ctrl(struct file *file , void *priv , struct v4l2_control *ctrl )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    rc = ac97_set_ctrl(dev, (struct v4l2_control const *)ctrl);
  } else {
    rc = 1;
  }
  if (rc == 1) {
    rc = check_subdev_ctrl(dev, (int )ctrl->id);
    if (rc == 0) {
      __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
      goto ldv_46820;
      ldv_46819: ;
      if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_control * ))0)) {
        (*(((__sd->ops)->core)->s_ctrl))(__sd, ctrl);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
      ldv_46820: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
        goto ldv_46819;
      } else {
        goto ldv_46821;
      }
      ldv_46821: ;
    } else {
    }
    switch (ctrl->id) {
    case 9963785:
    dev->mute = ctrl->value;
    rc = em28xx_audio_analog_set(dev);
    goto ldv_46823;
    case 9963781:
    dev->volume = ctrl->value;
    rc = em28xx_audio_analog_set(dev);
    }
    ldv_46823: ;
  } else {
  }
  if (0 < rc) {
    tmp = 0;
  } else {
    tmp = rc;
  }
  return (tmp);
}
}
static int vidioc_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  strcpy((char *)(& t->name), "Tuner");
  t->type = 2U;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46839;
  ldv_46838: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46839: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46838;
  } else {
    goto ldv_46840;
  }
  ldv_46840: ;
  return (0);
}
}
static int vidioc_s_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46855;
  ldv_46854: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46855: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46854;
  } else {
    goto ldv_46856;
  }
  ldv_46856: ;
  return (0);
}
}
static int vidioc_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if (fh->radio != 0) {
    f->type = 1U;
  } else {
    f->type = 2U;
  }
  f->frequency = (__u32 )dev->ctl_freq;
  return (0);
}
}
static int vidioc_s_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (f->tuner != 0U) {
    return (-22);
  } else {
  }
  tmp = ldv__builtin_expect(fh->radio == 0, 0L);
  if (tmp != 0L) {
    tmp___0 = ldv__builtin_expect(f->type != 2U, 0L);
    if (tmp___0 != 0L) {
      return (-22);
    } else {
    }
  } else {
  }
  tmp___1 = ldv__builtin_expect(fh->radio == 1, 0L);
  if (tmp___1 != 0L) {
    tmp___2 = ldv__builtin_expect(f->type != 1U, 0L);
    if (tmp___2 != 0L) {
      return (-22);
    } else {
    }
  } else {
  }
  dev->ctl_freq = (int )f->frequency;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46878;
  ldv_46877: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency * ))0)) {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, f);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46878: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46877;
  } else {
    goto ldv_46879;
  }
  ldv_46879: ;
  return (0);
}
}
static int em28xx_reg_len(int reg )
{
  {
  switch (reg) {
  case 64: ;
  case 48: ;
  case 50: ;
  return (2);
  default: ;
  return (1);
  }
}
}
static int vidioc_g_chip_ident(struct file *file , void *priv , struct v4l2_dbg_chip_ident *chip )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  chip->ident = 0U;
  chip->revision = 0U;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46900;
  ldv_46899: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_chip_ident != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                struct v4l2_dbg_chip_ident * ))0)) {
    (*(((__sd->ops)->core)->g_chip_ident))(__sd, chip);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46900: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46899;
  } else {
    goto ldv_46901;
  }
  ldv_46901: ;
  return (0);
}
}
static int vidioc_g_register(struct file *file , void *priv , struct v4l2_dbg_register *reg )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int ret ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  int tmp___0 ;
  __le16 val ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  switch (reg->match.type) {
  case 3:
  ret = em28xx_read_ac97(dev, (int )((u8 )reg->reg));
  if (ret < 0) {
    return (ret);
  } else {
  }
  reg->val = (__u64 )ret;
  reg->size = 1U;
  return (0);
  case 1:
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46918;
  ldv_46917: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_dbg_register * ))0)) {
    (*(((__sd->ops)->core)->g_register))(__sd, reg);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46918: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46917;
  } else {
    goto ldv_46919;
  }
  ldv_46919: ;
  return (0);
  case 2:
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_46927;
  ldv_46926: ;
  if ((unsigned long )(__sd___0->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd___0->ops)->core)->g_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                      struct v4l2_dbg_register * ))0)) {
    (*(((__sd___0->ops)->core)->g_register))(__sd___0, reg);
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_46927: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46926;
  } else {
    goto ldv_46928;
  }
  ldv_46928: ;
  return (0);
  default:
  tmp = v4l2_chip_match_host((struct v4l2_dbg_match const *)(& reg->match));
  if (tmp == 0) {
    return (-22);
  } else {
  }
  }
  tmp___0 = em28xx_reg_len((int )reg->reg);
  reg->size = (__u32 )tmp___0;
  if (reg->size == 1U) {
    ret = em28xx_read_reg(dev, (int )((u16 )reg->reg));
    if (ret < 0) {
      return (ret);
    } else {
    }
    reg->val = (__u64 )ret;
  } else {
    val = 0U;
    ret = em28xx_read_reg_req_len(dev, 0, (int )((u16 )reg->reg), (char *)(& val),
                                  2);
    if (ret < 0) {
      return (ret);
    } else {
    }
    reg->val = (__u64 )val;
  }
  return (0);
}
}
static int vidioc_s_register(struct file *file , void *priv , struct v4l2_dbg_register *reg )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  __le16 buf ;
  int tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  switch (reg->match.type) {
  case 3:
  tmp = em28xx_write_ac97(dev, (int )((u8 )reg->reg), (int )((u16 )reg->val));
  return (tmp);
  case 1:
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46947;
  ldv_46946: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_dbg_register * ))0)) {
    (*(((__sd->ops)->core)->s_register))(__sd, reg);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46947: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46946;
  } else {
    goto ldv_46948;
  }
  ldv_46948: ;
  return (0);
  case 2:
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_46956;
  ldv_46955: ;
  if ((unsigned long )(__sd___0->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd___0->ops)->core)->s_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                      struct v4l2_dbg_register * ))0)) {
    (*(((__sd___0->ops)->core)->s_register))(__sd___0, reg);
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_46956: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46955;
  } else {
    goto ldv_46957;
  }
  ldv_46957: ;
  return (0);
  default:
  tmp___0 = v4l2_chip_match_host((struct v4l2_dbg_match const *)(& reg->match));
  if (tmp___0 == 0) {
    return (-22);
  } else {
  }
  }
  buf = (unsigned short )reg->val;
  tmp___1 = em28xx_reg_len((int )reg->reg);
  tmp___2 = em28xx_write_regs(dev, (int )((u16 )reg->reg), (char *)(& buf), tmp___1);
  return (tmp___2);
}
}
static int vidioc_cropcap(struct file *file , void *priv , struct v4l2_cropcap *cc )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if (cc->type != 1U) {
    return (-22);
  } else {
  }
  cc->bounds.left = 0;
  cc->bounds.top = 0;
  cc->bounds.width = dev->width;
  cc->bounds.height = dev->height;
  cc->defrect = cc->bounds;
  cc->pixelaspect.numerator = 54U;
  cc->pixelaspect.denominator = 59U;
  return (0);
}
}
static int vidioc_streamon(struct file *file , void *priv , enum v4l2_buf_type type )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = -22;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )fh->type != (unsigned int )type, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  if (video_debug != 0U) {
    printk("\016%s %s :vidioc_streamon fh=%p t=%d fh->res=%d dev->res=%d\n", (char *)(& dev->name),
           "vidioc_streamon", fh, (unsigned int )type, fh->resources, dev->resources);
  } else {
  }
  tmp___0 = get_ressource(fh);
  tmp___1 = res_get(fh, (unsigned int )tmp___0);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    return (-16);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    rc = videobuf_streamon(& fh->vb_vidq);
  } else
  if ((unsigned int )fh->type == 4U) {
    rc = videobuf_streamon(& fh->vb_vbiq);
  } else {
  }
  return (rc);
}
}
static int vidioc_streamoff(struct file *file , void *priv , enum v4l2_buf_type type )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )fh->type != 1U && (unsigned int )fh->type != 4U) {
    return (-22);
  } else {
  }
  if ((unsigned int )fh->type != (unsigned int )type) {
    return (-22);
  } else {
  }
  if (video_debug != 0U) {
    printk("\016%s %s :vidioc_streamoff fh=%p t=%d fh->res=%d dev->res=%d\n", (char *)(& dev->name),
           "vidioc_streamoff", fh, (unsigned int )type, fh->resources, dev->resources);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    tmp = res_check(fh, 1U);
    if (tmp != 0) {
      videobuf_streamoff(& fh->vb_vidq);
      res_free(fh, 1U);
    } else {
    }
  } else
  if ((unsigned int )fh->type == 4U) {
    tmp___0 = res_check(fh, 2U);
    if (tmp___0 != 0) {
      videobuf_streamoff(& fh->vb_vbiq);
      res_free(fh, 2U);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  strlcpy((char *)(& cap->driver), "em28xx", 16UL);
  strlcpy((char *)(& cap->card), (char const *)em28xx_boards[dev->model].name, 32UL);
  usb_make_path(dev->udev, (char *)(& cap->bus_info), 32UL);
  cap->capabilities = 83886145U;
  if ((unsigned long )dev->vbi_dev != (unsigned long )((struct video_device *)0)) {
    cap->capabilities = cap->capabilities | 16U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 784UL) != 0U) {
    cap->capabilities = cap->capabilities | 131072U;
  } else {
  }
  if (dev->tuner_type != 4) {
    cap->capabilities = cap->capabilities | 65536U;
  } else {
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{ long tmp ;
  {
  tmp = ldv__builtin_expect(f->index > 5U, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& f->description), (char const *)format[f->index].name, 32UL);
  f->pixelformat = format[f->index].fourcc;
  return (0);
}
}
static int vidioc_enum_framesizes(struct file *file , void *priv , struct v4l2_frmsizeenum *fsize )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct em28xx_fmt *fmt ;
  unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  fmt = format_by_fourcc(fsize->pixel_format);
  if ((unsigned long )fmt == (unsigned long )((struct em28xx_fmt *)0)) {
    if (video_debug != 0U) {
      printk("\016%s %s :Fourcc format (%08x) invalid.\n", (char *)(& dev->name),
             "vidioc_enum_framesizes", fsize->pixel_format);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    if (fsize->index > 1U) {
      return (-22);
    } else {
    }
    fsize->type = 1U;
    fsize->ldv_28401.discrete.width = maxw / (fsize->index + 1U);
    fsize->ldv_28401.discrete.height = maxh / (fsize->index + 1U);
    return (0);
  } else {
  }
  if (fsize->index != 0U) {
    return (-22);
  } else {
  }
  fsize->type = 3U;
  fsize->ldv_28401.stepwise.min_width = 48U;
  fsize->ldv_28401.stepwise.min_height = 32U;
  fsize->ldv_28401.stepwise.max_width = maxw;
  fsize->ldv_28401.stepwise.max_height = maxh;
  fsize->ldv_28401.stepwise.step_width = 1U;
  fsize->ldv_28401.stepwise.step_height = 1U;
  return (0);
}
}
static int vidioc_g_fmt_sliced_vbi_cap(struct file *file , void *priv , struct v4l2_format *f )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  f->fmt.sliced.service_set = 0U;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47023;
  ldv_47022: ;
  if ((unsigned long )(__sd->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )((__sd->ops)->vbi)->g_sliced_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             struct v4l2_sliced_vbi_format * ))0)) {
    (*(((__sd->ops)->vbi)->g_sliced_fmt))(__sd, & f->fmt.sliced);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47023: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47022;
  } else {
    goto ldv_47024;
  }
  ldv_47024: ;
  if ((unsigned int )f->fmt.sliced.service_set == 0U) {
    rc = -22;
  } else {
  }
  return (rc);
}
}
static int vidioc_try_set_sliced_vbi_cap(struct file *file , void *priv , struct v4l2_format *f )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47039;
  ldv_47038: ;
  if ((unsigned long )(__sd->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )((__sd->ops)->vbi)->g_sliced_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             struct v4l2_sliced_vbi_format * ))0)) {
    (*(((__sd->ops)->vbi)->g_sliced_fmt))(__sd, & f->fmt.sliced);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47039: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47038;
  } else {
    goto ldv_47040;
  }
  ldv_47040: ;
  if ((unsigned int )f->fmt.sliced.service_set == 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int vidioc_g_fmt_vbi_cap(struct file *file , void *priv , struct v4l2_format *format___0 )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  format___0->fmt.vbi.samples_per_line = dev->vbi_width;
  format___0->fmt.vbi.sample_format = 1497715271U;
  format___0->fmt.vbi.offset = 0U;
  format___0->fmt.vbi.flags = 0U;
  format___0->fmt.vbi.sampling_rate = 13500000U;
  format___0->fmt.vbi.count[0] = dev->vbi_height;
  format___0->fmt.vbi.count[1] = dev->vbi_height;
  if ((dev->norm & 63744ULL) != 0ULL) {
    format___0->fmt.vbi.start[0] = 10;
    format___0->fmt.vbi.start[1] = 273;
  } else
  if ((dev->norm & 16713471ULL) != 0ULL) {
    format___0->fmt.vbi.start[0] = 6;
    format___0->fmt.vbi.start[1] = 318;
  } else {
  }
  return (0);
}
}
static int vidioc_s_fmt_vbi_cap(struct file *file , void *priv , struct v4l2_format *format___0 )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  format___0->fmt.vbi.samples_per_line = dev->vbi_width;
  format___0->fmt.vbi.sample_format = 1497715271U;
  format___0->fmt.vbi.offset = 0U;
  format___0->fmt.vbi.flags = 0U;
  format___0->fmt.vbi.sampling_rate = 13500000U;
  format___0->fmt.vbi.count[0] = dev->vbi_height;
  format___0->fmt.vbi.count[1] = dev->vbi_height;
  if ((dev->norm & 63744ULL) != 0ULL) {
    format___0->fmt.vbi.start[0] = 10;
    format___0->fmt.vbi.start[1] = 273;
  } else
  if ((dev->norm & 16713471ULL) != 0ULL) {
    format___0->fmt.vbi.start[0] = 6;
    format___0->fmt.vbi.start[1] = 318;
  } else {
  }
  return (0);
}
}
static int vidioc_reqbufs(struct file *file , void *priv , struct v4l2_requestbuffers *rb )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    tmp = videobuf_reqbufs(& fh->vb_vidq, rb);
    return (tmp);
  } else {
    tmp___0 = videobuf_reqbufs(& fh->vb_vbiq, rb);
    return (tmp___0);
  }
}
}
static int vidioc_querybuf(struct file *file , void *priv , struct v4l2_buffer *b )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  int result ;
  int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    tmp = videobuf_querybuf(& fh->vb_vidq, b);
    return (tmp);
  } else {
    tmp___0 = videobuf_querybuf(& fh->vb_vbiq, b);
    result = tmp___0;
    b->length = (dev->vbi_width * dev->vbi_height) * 2U;
    return (result);
  }
}
}
static int vidioc_qbuf(struct file *file , void *priv , struct v4l2_buffer *b )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    tmp = videobuf_qbuf(& fh->vb_vidq, b);
    return (tmp);
  } else {
    tmp___0 = videobuf_qbuf(& fh->vb_vbiq, b);
    return (tmp___0);
  }
}
}
static int vidioc_dqbuf(struct file *file , void *priv , struct v4l2_buffer *b )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    tmp = videobuf_dqbuf(& fh->vb_vidq, b, (int )file->f_flags & 2048);
    return (tmp);
  } else {
    tmp___0 = videobuf_dqbuf(& fh->vb_vbiq, b, (int )file->f_flags & 2048);
    return (tmp___0);
  }
}
}
static int radio_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{ struct em28xx *dev ;
  {
  dev = ((struct em28xx_fh *)priv)->dev;
  strlcpy((char *)(& cap->driver), "em28xx", 16UL);
  strlcpy((char *)(& cap->card), (char const *)em28xx_boards[dev->model].name, 32UL);
  usb_make_path(dev->udev, (char *)(& cap->bus_info), 32UL);
  cap->capabilities = 65536U;
  return (0);
}
}
static int radio_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{ struct em28xx *dev ;
  long tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = ((struct em28xx_fh *)priv)->dev;
  tmp = ldv__builtin_expect(t->index != 0U, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  strcpy((char *)(& t->name), "Radio");
  t->type = 1U;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47106;
  ldv_47105: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47106: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47105;
  } else {
    goto ldv_47107;
  }
  ldv_47107: ;
  return (0);
}
}
static int radio_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{
  {
  if (i->index != 0U) {
    return (-22);
  } else {
  }
  strcpy((char *)(& i->name), "Radio");
  i->type = 1U;
  return (0);
}
}
static int radio_g_audio(struct file *file , void *priv , struct v4l2_audio *a )
{ long tmp ;
  {
  tmp = ldv__builtin_expect(a->index != 0U, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  strcpy((char *)(& a->name), "Radio");
  return (0);
}
}
static int radio_s_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{ struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = ((struct em28xx_fh *)priv)->dev;
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47130;
  ldv_47129: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47130: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47129;
  } else {
    goto ldv_47131;
  }
  ldv_47131: ;
  return (0);
}
}
static int radio_s_audio(struct file *file , void *fh , struct v4l2_audio const *a )
{
  {
  return (0);
}
}
static int radio_s_input(struct file *file , void *fh , unsigned int i )
{
  {
  return (0);
}
}
static int radio_queryctrl(struct file *file , void *priv , struct v4l2_queryctrl *qc )
{ int i ;
  size_t __len ;
  void *__ret ;
  {
  if (qc->id <= 9963775U || qc->id > 9963818U) {
    return (-22);
  } else {
  }
  i = 0;
  goto ldv_47154;
  ldv_47153: ;
  if (qc->id != 0U && qc->id == ac97_qctrl[i].id) {
    __len = 68UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)qc, (void const *)(& ac97_qctrl) + (unsigned long )i,
                       __len);
    } else {
      __ret = memcpy((void *)qc, (void const *)(& ac97_qctrl) + (unsigned long )i,
                               __len);
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_47154: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_47153;
  } else {
    goto ldv_47155;
  }
  ldv_47155: ;
  return (-22);
}
}
static int em28xx_v4l2_open(struct file *filp )
{ int errCode ;
  int radio ;
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct em28xx *dev ;
  void *tmp___0 ;
  enum v4l2_buf_type fh_type ;
  struct em28xx_fh *fh ;
  enum v4l2_field field ;
  char const *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  errCode = 0;
  radio = 0;
  tmp = video_devdata(filp);
  vdev = tmp;
  tmp___0 = video_drvdata(filp);
  dev = (struct em28xx *)tmp___0;
  fh_type = 0;
  switch (vdev->vfl_type) {
  case 0:
  fh_type = 1;
  goto ldv_47167;
  case 1:
  fh_type = 4;
  goto ldv_47167;
  case 2:
  radio = 1;
  goto ldv_47167;
  }
  ldv_47167: ;
  if (video_debug != 0U) {
    tmp___1 = video_device_node_name(vdev);
    printk("\016%s %s :open dev=%s type=%s users=%d\n", (char *)(& dev->name), "em28xx_v4l2_open",
           tmp___1, v4l2_type_names[(unsigned int )fh_type], dev->users);
  } else {
  }
  tmp___2 = ldv_mutex_lock_interruptible_10(& dev->lock);
  if (tmp___2 != 0) {
    return (-512);
  } else {
  }
  tmp___3 = kzalloc(1256UL, 208U);
  fh = (struct em28xx_fh *)tmp___3;
  if ((unsigned long )fh == (unsigned long )((struct em28xx_fh *)0)) {
    printk("\v%s: em28xx-video.c: Out of memory?!\n", (char *)(& dev->name));
    ldv_mutex_unlock_11(& dev->lock);
    return (-12);
  } else {
  }
  fh->dev = dev;
  fh->radio = radio;
  fh->type = fh_type;
  filp->private_data = (void *)fh;
  if ((unsigned int )fh->type == 1U && dev->users == 0) {
    em28xx_set_mode(dev, 1);
    em28xx_set_alternate(dev);
    em28xx_resolution_set(dev);
    em28xx_wake_i2c(dev);
  } else {
  }
  if (fh->radio != 0) {
    if (video_debug != 0U) {
      printk("\016%s %s :video_open: setting radio device\n", (char *)(& dev->name),
             "em28xx_v4l2_open");
    } else {
    }
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_47177;
    ldv_47176: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
      (*(((__sd->ops)->tuner)->s_radio))(__sd);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_47177: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_47176;
    } else {
      goto ldv_47178;
    }
    ldv_47178: ;
  } else {
  }
  dev->users = dev->users + 1;
  if (dev->progressive != 0) {
    field = 1;
  } else {
    field = 4;
  }
  videobuf_queue_vmalloc_init(& fh->vb_vidq, (struct videobuf_queue_ops const *)(& em28xx_video_qops),
                              0, & dev->slock, 1, field, 264U, (void *)fh, & dev->lock);
  videobuf_queue_vmalloc_init(& fh->vb_vbiq, (struct videobuf_queue_ops const *)(& em28xx_vbi_qops),
                              0, & dev->slock, 4, 5, 264U, (void *)fh, & dev->lock);
  ldv_mutex_unlock_12(& dev->lock);
  return (errCode);
}
}
void em28xx_release_analog_resources(struct em28xx *dev )
{ int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )dev->radio_dev != (unsigned long )((struct video_device *)0)) {
    tmp = video_is_registered(dev->radio_dev);
    if (tmp != 0) {
      video_unregister_device(dev->radio_dev);
    } else {
      video_device_release(dev->radio_dev);
    }
    dev->radio_dev = 0;
  } else {
  }
  if ((unsigned long )dev->vbi_dev != (unsigned long )((struct video_device *)0)) {
    tmp___0 = video_device_node_name(dev->vbi_dev);
    printk("\016%s: V4L2 device %s deregistered\n", (char *)(& dev->name), tmp___0);
    tmp___1 = video_is_registered(dev->vbi_dev);
    if (tmp___1 != 0) {
      video_unregister_device(dev->vbi_dev);
    } else {
      video_device_release(dev->vbi_dev);
    }
    dev->vbi_dev = 0;
  } else {
  }
  if ((unsigned long )dev->vdev != (unsigned long )((struct video_device *)0)) {
    tmp___2 = video_device_node_name(dev->vdev);
    printk("\016%s: V4L2 device %s deregistered\n", (char *)(& dev->name), tmp___2);
    tmp___3 = video_is_registered(dev->vdev);
    if (tmp___3 != 0) {
      video_unregister_device(dev->vdev);
    } else {
      video_device_release(dev->vdev);
    }
    dev->vdev = 0;
  } else {
  }
  return;
}
}
static int em28xx_v4l2_close(struct file *filp )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int errCode ;
  int tmp ;
  int tmp___0 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)filp->private_data;
  dev = fh->dev;
  if (video_debug != 0U) {
    printk("\016%s %s :users=%d\n", (char *)(& dev->name), "em28xx_v4l2_close", dev->users);
  } else {
  }
  ldv_mutex_lock_13(& dev->lock);
  tmp = res_check(fh, 1U);
  if (tmp != 0) {
    videobuf_stop(& fh->vb_vidq);
    res_free(fh, 1U);
  } else {
  }
  tmp___0 = res_check(fh, 2U);
  if (tmp___0 != 0) {
    videobuf_stop(& fh->vb_vbiq);
    res_free(fh, 2U);
  } else {
  }
  if (dev->users == 1) {
    if (((unsigned int )dev->state & 2U) != 0U) {
      em28xx_release_resources(dev);
      kfree((void const *)dev->alt_max_pkt_size);
      ldv_mutex_unlock_14(& dev->lock);
      kfree((void const *)dev);
      kfree((void const *)fh);
      return (0);
    } else {
    }
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_47195;
    ldv_47194: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_power != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             int ))0)) {
      (*(((__sd->ops)->core)->s_power))(__sd, 0);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_47195: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_47194;
    } else {
      goto ldv_47196;
    }
    ldv_47196:
    em28xx_uninit_isoc(dev, 1);
    em28xx_set_mode(dev, 0);
    dev->alt = 0;
    if (video_debug != 0U) {
      printk("\016%s %s :setting alternate 0\n", (char *)(& dev->name), "em28xx_v4l2_close");
    } else {
    }
    errCode = usb_set_interface(dev->udev, 0, 0);
    if (errCode < 0) {
      printk("\v%s: cannot change alternate number to 0 (error=%i)\n", (char *)(& dev->name),
             errCode);
    } else {
    }
  } else {
  }
  videobuf_mmap_free(& fh->vb_vidq);
  videobuf_mmap_free(& fh->vb_vbiq);
  kfree((void const *)fh);
  dev->users = dev->users - 1;
  ldv_mutex_unlock_15(& dev->lock);
  return (0);
}
}
static ssize_t em28xx_v4l2_read(struct file *filp , char *buf , size_t count , loff_t *pos )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  ssize_t tmp___0 ;
  int tmp___1 ;
  ssize_t tmp___2 ;
  int tmp___3 ;
  {
  fh = (struct em28xx_fh *)filp->private_data;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return ((ssize_t )rc);
  } else {
  }
  tmp = ldv_mutex_lock_interruptible_16(& dev->lock);
  if (tmp != 0) {
    return (-512L);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    tmp___1 = res_locked(dev, 1U);
    if (tmp___1 != 0) {
      rc = -16;
    } else {
      tmp___0 = videobuf_read_stream(& fh->vb_vidq, buf, count, pos, 0, (int )filp->f_flags & 2048);
      rc = (int )tmp___0;
    }
  } else
  if ((unsigned int )fh->type == 4U) {
    tmp___3 = res_get(fh, 2U);
    if (tmp___3 == 0) {
      rc = -16;
    } else {
      tmp___2 = videobuf_read_stream(& fh->vb_vbiq, buf, count, pos, 0, (int )filp->f_flags & 2048);
      rc = (int )tmp___2;
    }
  } else {
  }
  ldv_mutex_unlock_17(& dev->lock);
  return ((ssize_t )rc);
}
}
static unsigned int em28xx_poll(struct file *filp , poll_table *wait )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  fh = (struct em28xx_fh *)filp->private_data;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return ((unsigned int )rc);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    tmp = res_get(fh, 1U);
    if (tmp == 0) {
      return (8U);
    } else {
    }
    tmp___0 = videobuf_poll_stream(filp, & fh->vb_vidq, wait);
    return (tmp___0);
  } else
  if ((unsigned int )fh->type == 4U) {
    tmp___1 = res_get(fh, 2U);
    if (tmp___1 == 0) {
      return (8U);
    } else {
    }
    tmp___2 = videobuf_poll_stream(filp, & fh->vb_vbiq, wait);
    return (tmp___2);
  } else {
    return (8U);
  }
}
}
static unsigned int em28xx_v4l2_poll(struct file *filp , poll_table *wait )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  unsigned int res ;
  {
  fh = (struct em28xx_fh *)filp->private_data;
  dev = fh->dev;
  ldv_mutex_lock_18(& dev->lock);
  res = em28xx_poll(filp, wait);
  ldv_mutex_unlock_19(& dev->lock);
  return (res);
}
}
static int em28xx_v4l2_mmap(struct file *filp , struct vm_area_struct *vma )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  int tmp ;
  {
  fh = (struct em28xx_fh *)filp->private_data;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  tmp = ldv_mutex_lock_interruptible_20(& dev->lock);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    rc = videobuf_mmap_mapper(& fh->vb_vidq, vma);
  } else
  if ((unsigned int )fh->type == 4U) {
    rc = videobuf_mmap_mapper(& fh->vb_vbiq, vma);
  } else {
  }
  ldv_mutex_unlock_21(& dev->lock);
  if (video_debug != 0U) {
    printk("\016%s %s :vma start=0x%08lx, size=%ld, ret=%d\n", (char *)(& dev->name),
           "em28xx_v4l2_mmap", vma->vm_start, vma->vm_end - vma->vm_start, rc);
  } else {
  }
  return (rc);
}
}
static struct v4l2_file_operations const em28xx_v4l_fops =
     {& __this_module, & em28xx_v4l2_read, 0, & em28xx_v4l2_poll, 0, & video_ioctl2,
    0, 0, & em28xx_v4l2_mmap, & em28xx_v4l2_open, & em28xx_v4l2_close};
static struct v4l2_ioctl_ops const video_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, & vidioc_g_fmt_vbi_cap, 0, & vidioc_g_fmt_sliced_vbi_cap, 0, 0, 0, & vidioc_s_fmt_vid_cap,
    0, 0, 0, & vidioc_s_fmt_vbi_cap, 0, & vidioc_try_set_sliced_vbi_cap, 0, 0, 0,
    & vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, & vidioc_try_set_sliced_vbi_cap, 0, 0,
    0, & vidioc_reqbufs, & vidioc_querybuf, & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0,
    0, 0, 0, & vidioc_streamon, & vidioc_streamoff, & vidioc_g_std, & vidioc_s_std,
    & vidioc_querystd, & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input, 0,
    0, 0, & vidioc_queryctrl, & vidioc_g_ctrl, & vidioc_s_ctrl, 0, 0, 0, 0, 0, & vidioc_g_audio,
    & vidioc_s_audio, 0, 0, 0, 0, 0, & vidioc_cropcap, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, & vidioc_g_parm, & vidioc_s_parm, & vidioc_g_tuner, & vidioc_s_tuner, & vidioc_g_frequency,
    & vidioc_s_frequency, 0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register, & vidioc_g_chip_ident,
    & vidioc_enum_framesizes, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct video_device const em28xx_video_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & em28xx_v4l_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, (unsigned char)0, (unsigned char)0, (unsigned char)0,
            (unsigned char)0, (unsigned char)0}, 0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0,
                                                                {0, {0, 0}, 0, 0,
                                                                 0UL}}}}, {0, 0},
                                                        0, 0, 0, {0, {0, 0}, 0, 0,
                                                                  0UL}}, 0, 0, 0,
     {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
      {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0U, {{{{{{0U}}, 0U,
                                                                        0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                     {0, 0}}}, 0,
      (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0}, {0, {0, 0},
                                                                        0, 0, 0UL}},
      0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                                                       {0, 0}}, {0}, {0}, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, 0,
      0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0},
     0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0, {0, 0},
                                                                       {{0}}}, 0,
     0, 0, 0}, 0, 0, 0, 0, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                                  (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                                  (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                                  (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                                  (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                                  (char)0, (char)0}, 0, 0, 0, (unsigned short)0, 0UL,
    0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 16777215ULL, 255ULL,
    & video_device_release, & video_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct v4l2_file_operations const radio_fops =
     {& __this_module, 0, 0, 0, 0, & video_ioctl2, 0, 0, 0, & em28xx_v4l2_open, & em28xx_v4l2_close};
static struct v4l2_ioctl_ops const radio_ioctl_ops =
     {& radio_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, & radio_enum_input, 0, & radio_s_input, 0, 0, 0, & radio_queryctrl,
    & vidioc_g_ctrl, & vidioc_s_ctrl, 0, 0, 0, 0, 0, & radio_g_audio, & radio_s_audio,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & radio_g_tuner, & radio_s_tuner,
    & vidioc_g_frequency, & vidioc_s_frequency, 0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct video_device em28xx_radio_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & radio_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   {0U,
                                                                                    {{{{{{0U}},
                                                                                        0U,
                                                                                        0U,
                                                                                        0,
                                                                                        {0,
                                                                                         {0,
                                                                                          0},
                                                                                         0,
                                                                                         0,
                                                                                         0UL}}}},
                                                                                     {0,
                                                                                      0}}},
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    {(char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{{{{{0U}},
                                                                                       0U,
                                                                                       0U,
                                                                                       0,
                                                                                       {0,
                                                                                        {0,
                                                                                         0},
                                                                                        0,
                                                                                        0,
                                                                                        0UL}}}},
                                                                                    {0,
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0},
    0, 0, 0, 0, 0, 0, {'e', 'm', '2', '8', 'x', 'x', '-', 'r', 'a', 'd', 'i', 'o',
                       '\000'}, 0, 0, 0, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
    {0, 0}, 0, 0ULL, 0ULL, 0, & radio_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL},
    0};
static struct video_device *em28xx_vdev_init(struct em28xx *dev , struct video_device const *template ,
                                             char const *type_name )
{ struct video_device *vfd ;
  {
  vfd = video_device_alloc();
  if ((unsigned long )vfd == (unsigned long )((struct video_device *)0)) {
    return (0);
  } else {
  }
  *vfd = *template;
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->release = & video_device_release;
  vfd->debug = (int )video_debug;
  vfd->lock = & dev->lock;
  snprintf((char *)(& vfd->name), 32UL, "%s %s", (char *)(& dev->name), type_name);
  video_set_drvdata(vfd, (void *)dev);
  return (vfd);
}
}
int em28xx_register_analog_devices(struct em28xx *dev )
{ u8 val ;
  int ret ;
  unsigned int maxw ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  {
  printk("\016%s: v4l2 driver version %s\n", (char *)(& dev->name), (char *)"0.1.3");
  dev->norm = em28xx_video_template.current_norm;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47252;
  ldv_47251: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         v4l2_std_id ))0)) {
    (*(((__sd->ops)->core)->s_std))(__sd, dev->norm);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47252: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47251;
  } else {
    goto ldv_47253;
  }
  ldv_47253:
  dev->interlaced = 1;
  dev->format = (struct em28xx_fmt *)(& format);
  maxw = norm_maxw(dev);
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    maxw = maxw / 2U;
  } else {
  }
  tmp = norm_maxh(dev);
  em28xx_set_video_format(dev, format[0].fourcc, maxw, tmp);
  video_mux(dev, 0);
  dev->mute = 1;
  dev->volume = 31;
  tmp___0 = em28xx_read_reg(dev, 15);
  val = (unsigned char )tmp___0;
  em28xx_write_reg(dev, 15, (int )((unsigned int )val | 128U));
  em28xx_set_outfmt(dev);
  em28xx_colorlevels_set_default(dev);
  em28xx_compression_disable(dev);
  dev->vdev = em28xx_vdev_init(dev, & em28xx_video_template, "video");
  if ((unsigned long )dev->vdev == (unsigned long )((struct video_device *)0)) {
    printk("\v%s: cannot allocate video_device.\n", (char *)(& dev->name));
    return (-19);
  } else {
  }
  ret = video_register_device(dev->vdev, 0, (int )video_nr[dev->devno]);
  if (ret != 0) {
    printk("\v%s: unable to register video device (error=%i).\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  tmp___1 = em28xx_vbi_supported(dev);
  if (tmp___1 == 1) {
    dev->vbi_dev = em28xx_vdev_init(dev, & em28xx_video_template, "vbi");
    ret = video_register_device(dev->vbi_dev, 1, (int )vbi_nr[dev->devno]);
    if (ret < 0) {
      printk("\v%s: unable to register vbi device\n", (char *)(& dev->name));
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned int )em28xx_boards[dev->model].radio.type == 10U) {
    dev->radio_dev = em28xx_vdev_init(dev, (struct video_device const *)(& em28xx_radio_template),
                                      "radio");
    if ((unsigned long )dev->radio_dev == (unsigned long )((struct video_device *)0)) {
      printk("\v%s: cannot allocate video_device.\n", (char *)(& dev->name));
      return (-19);
    } else {
    }
    ret = video_register_device(dev->radio_dev, 2, (int )radio_nr[dev->devno]);
    if (ret < 0) {
      printk("\v%s: can\'t register radio device\n", (char *)(& dev->name));
      return (ret);
    } else {
    }
    tmp___2 = video_device_node_name(dev->radio_dev);
    printk("\016%s: Registered radio device as %s\n", (char *)(& dev->name), tmp___2);
  } else {
  }
  tmp___3 = video_device_node_name(dev->vdev);
  printk("\016%s: V4L2 video device registered as %s\n", (char *)(& dev->name), tmp___3);
  if ((unsigned long )dev->vbi_dev != (unsigned long )((struct video_device *)0)) {
    tmp___4 = video_device_node_name(dev->vbi_dev);
    printk("\016%s: V4L2 VBI device registered as %s\n", (char *)(& dev->name), tmp___4);
  } else {
  }
  return (0);
}
}
struct file *video_ioctl_ops_group0 ;
unsigned int ldvarg84 ;
enum v4l2_buf_type ldvarg51 ;
void *ldvarg32 ;
void *ldvarg7 ;
struct v4l2_frequency *video_ioctl_ops_group7 ;
void *ldvarg42 ;
void *ldvarg12 ;
void *ldvarg50 ;
void *ldvarg46 ;
void *ldvarg58 ;
void *ldvarg53 ;
char *ldvarg64 ;
void *ldvarg44 ;
void *ldvarg83 ;
unsigned int *ldvarg69 ;
struct v4l2_tuner *radio_ioctl_ops_group2 ;
v4l2_std_id *ldvarg33 ;
struct v4l2_capability *ldvarg6 ;
void *ldvarg16 ;
struct file *radio_fops_group1 ;
void *ldvarg28 ;
void *ldvarg47 ;
void *ldvarg20 ;
v4l2_std_id *ldvarg31 ;
void *ldvarg60 ;
unsigned int *ldvarg41 ;
struct v4l2_dbg_chip_ident *ldvarg59 ;
struct v4l2_queryctrl *ldvarg86 ;
struct v4l2_dbg_register *video_ioctl_ops_group1 ;
enum v4l2_buf_type ldvarg49 ;
struct v4l2_audio *ldvarg79 ;
struct videobuf_queue *em28xx_video_qops_group1 ;
struct v4l2_control *radio_ioctl_ops_group3 ;
struct videobuf_buffer *em28xx_video_qops_group2 ;
void *ldvarg13 ;
void *ldvarg55 ;
void *ldvarg36 ;
void *ldvarg10 ;
void *ldvarg40 ;
void *ldvarg81 ;
struct v4l2_queryctrl *ldvarg45 ;
size_t ldvarg63 ;
unsigned int *ldvarg70 ;
void *ldvarg90 ;
struct videobuf_queue *ldvarg68 ;
void *ldvarg30 ;
struct file *radio_fops_group0 ;
struct file *em28xx_v4l_fops_group0 ;
void *ldvarg54 ;
void *ldvarg92 ;
struct v4l2_frequency *radio_ioctl_ops_group4 ;
struct v4l2_audio *ldvarg82 ;
void *ldvarg76 ;
struct v4l2_audio *ldvarg19 ;
void *ldvarg75 ;
struct v4l2_input *ldvarg77 ;
void *ldvarg18 ;
void *ldvarg11 ;
void *ldvarg91 ;
void *ldvarg23 ;
unsigned int ldvarg43 ;
enum v4l2_field ldvarg71 ;
struct videobuf_queue *ldvarg72 ;
void *ldvarg56 ;
void *ldvarg37 ;
int ldv_retval_em28xx_v4l2_open ;
void *ldvarg29 ;
struct v4l2_tuner *video_ioctl_ops_group2 ;
struct v4l2_control *video_ioctl_ops_group6 ;
void *ldvarg24 ;
void *ldvarg85 ;
v4l2_std_id *ldvarg35 ;
struct v4l2_streamparm *video_ioctl_ops_group5 ;
void *ldvarg38 ;
struct v4l2_format *video_ioctl_ops_group4 ;
void *ldvarg93 ;
void *ldvarg48 ;
void *ldvarg14 ;
struct file *radio_ioctl_ops_group0 ;
void *ldvarg89 ;
struct file *em28xx_v4l_fops_group1 ;
void *ldvarg34 ;
struct v4l2_input *ldvarg39 ;
void *ldvarg80 ;
void *ldvarg87 ;
loff_t *ldvarg62 ;
poll_table *ldvarg65 ;
struct v4l2_fmtdesc *ldvarg8 ;
void *ldvarg57 ;
struct vm_area_struct *ldvarg66 ;
void *ldvarg9 ;
int ldv_retval_buffer_prepare ;
void *ldvarg27 ;
struct v4l2_requestbuffers *ldvarg26 ;
struct videobuf_buffer *ldvarg73 ;
struct v4l2_dbg_register *radio_ioctl_ops_group1 ;
void *ldvarg88 ;
void *ldvarg78 ;
struct v4l2_frmsizeenum *ldvarg15 ;
struct v4l2_cropcap *ldvarg21 ;
struct v4l2_buffer *video_ioctl_ops_group3 ;
void *ldvarg25 ;
struct v4l2_audio *ldvarg17 ;
void *ldvarg22 ;
struct v4l2_capability *ldvarg74 ;
void *ldvarg52 ;
void ldv_main_exported_4(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 == 2) {
    em28xx_v4l2_close(radio_fops_group1);
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_47365;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    ldv_retval_em28xx_v4l2_open = em28xx_v4l2_open(radio_fops_group1);
    if (ldv_retval_em28xx_v4l2_open == 0) {
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_47365;
  default: ;
  goto ldv_47365;
  }
  ldv_47365: ;
  return;
}
}
void ldv_main_exported_1(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_1 == 2) {
    buffer_release(em28xx_video_qops_group1, em28xx_video_qops_group2);
    ldv_state_variable_1 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_47372;
  case 1: ;
  if (ldv_state_variable_1 == 1) {
    buffer_queue(ldvarg72, ldvarg73);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    buffer_queue(ldvarg72, ldvarg73);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_47372;
  case 2: ;
  if (ldv_state_variable_1 == 1) {
    ldv_retval_buffer_prepare = buffer_prepare(em28xx_video_qops_group1, em28xx_video_qops_group2,
                                               ldvarg71);
    if (ldv_retval_buffer_prepare == 0) {
      ldv_state_variable_1 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_47372;
  case 3: ;
  if (ldv_state_variable_1 == 1) {
    buffer_setup(ldvarg68, ldvarg70, ldvarg69);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    buffer_setup(ldvarg68, ldvarg70, ldvarg69);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_47372;
  default: ;
  goto ldv_47372;
  }
  ldv_47372: ;
  return;
}
}
void ldv_main_exported_3(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_chip_ident(video_ioctl_ops_group0, ldvarg60, ldvarg59);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 1: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_register(video_ioctl_ops_group0, ldvarg58, video_ioctl_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 2: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_register(video_ioctl_ops_group0, ldvarg57, video_ioctl_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 3: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_frequency(video_ioctl_ops_group0, ldvarg56, video_ioctl_ops_group7);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 4: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_frequency(video_ioctl_ops_group0, ldvarg55, video_ioctl_ops_group7);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 5: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_tuner(video_ioctl_ops_group0, ldvarg54, video_ioctl_ops_group2);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 6: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_tuner(video_ioctl_ops_group0, ldvarg53, video_ioctl_ops_group2);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 7: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_streamoff(video_ioctl_ops_group0, ldvarg52, ldvarg51);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 8: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_streamon(video_ioctl_ops_group0, ldvarg50, ldvarg49);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 9: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_ctrl(video_ioctl_ops_group0, ldvarg48, video_ioctl_ops_group6);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 10: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_ctrl(video_ioctl_ops_group0, ldvarg47, video_ioctl_ops_group6);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 11: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_queryctrl(video_ioctl_ops_group0, ldvarg46, ldvarg45);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 12: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_input(video_ioctl_ops_group0, ldvarg44, ldvarg43);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 13: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_input(video_ioctl_ops_group0, ldvarg42, ldvarg41);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 14: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_enum_input(video_ioctl_ops_group0, ldvarg40, ldvarg39);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 15: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_parm(video_ioctl_ops_group0, ldvarg38, video_ioctl_ops_group5);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 16: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_parm(video_ioctl_ops_group0, ldvarg37, video_ioctl_ops_group5);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 17: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_std(video_ioctl_ops_group0, ldvarg36, ldvarg35);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 18: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_querystd(video_ioctl_ops_group0, ldvarg34, ldvarg33);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 19: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_std(video_ioctl_ops_group0, ldvarg32, ldvarg31);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 20: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_dqbuf(video_ioctl_ops_group0, ldvarg30, video_ioctl_ops_group3);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 21: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_qbuf(video_ioctl_ops_group0, ldvarg29, video_ioctl_ops_group3);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 22: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_querybuf(video_ioctl_ops_group0, ldvarg28, video_ioctl_ops_group3);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 23: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_reqbufs(video_ioctl_ops_group0, ldvarg27, ldvarg26);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 24: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_try_set_sliced_vbi_cap(video_ioctl_ops_group0, ldvarg25, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 25: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_try_set_sliced_vbi_cap(video_ioctl_ops_group0, ldvarg24, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 26: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_fmt_sliced_vbi_cap(video_ioctl_ops_group0, ldvarg23, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 27: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_cropcap(video_ioctl_ops_group0, ldvarg22, ldvarg21);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 28: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_audio(video_ioctl_ops_group0, ldvarg20, (struct v4l2_audio const *)ldvarg19);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 29: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_audio(video_ioctl_ops_group0, ldvarg18, ldvarg17);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 30: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_enum_framesizes(video_ioctl_ops_group0, ldvarg16, ldvarg15);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 31: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_fmt_vbi_cap(video_ioctl_ops_group0, ldvarg14, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 32: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_fmt_vbi_cap(video_ioctl_ops_group0, ldvarg13, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 33: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_s_fmt_vid_cap(video_ioctl_ops_group0, ldvarg12, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 34: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_try_fmt_vid_cap(video_ioctl_ops_group0, ldvarg11, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 35: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_g_fmt_vid_cap(video_ioctl_ops_group0, ldvarg10, video_ioctl_ops_group4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 36: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_enum_fmt_vid_cap(video_ioctl_ops_group0, ldvarg9, ldvarg8);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  case 37: ;
  if (ldv_state_variable_3 == 1) {
    vidioc_querycap(video_ioctl_ops_group0, ldvarg7, ldvarg6);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_47381;
  default: ;
  goto ldv_47381;
  }
  ldv_47381: ;
  return;
}
}
void ldv_main_exported_2(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    em28xx_v4l2_mmap(em28xx_v4l_fops_group0, ldvarg66);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    em28xx_v4l2_mmap(em28xx_v4l_fops_group0, ldvarg66);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_47424;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    em28xx_v4l2_poll(em28xx_v4l_fops_group0, ldvarg65);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    em28xx_v4l2_poll(em28xx_v4l_fops_group0, ldvarg65);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_47424;
  case 2: ;
  if (ldv_state_variable_2 == 2) {
    em28xx_v4l2_read(em28xx_v4l_fops_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_47424;
  case 3: ;
  if (ldv_state_variable_2 == 2) {
    em28xx_v4l2_close(em28xx_v4l_fops_group1);
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_47424;
  case 4: ;
  if (ldv_state_variable_2 == 1) {
    ldv_retval_em28xx_v4l2_open = em28xx_v4l2_open(em28xx_v4l_fops_group1);
    if (ldv_retval_em28xx_v4l2_open == 0) {
      ldv_state_variable_2 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_47424;
  default: ;
  goto ldv_47424;
  }
  ldv_47424: ;
  return;
}
}
void ldv_main_exported_5(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    vidioc_s_register(radio_ioctl_ops_group0, ldvarg93, radio_ioctl_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    vidioc_g_register(radio_ioctl_ops_group0, ldvarg92, radio_ioctl_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 2: ;
  if (ldv_state_variable_5 == 1) {
    vidioc_s_frequency(radio_ioctl_ops_group0, ldvarg91, radio_ioctl_ops_group4);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    vidioc_g_frequency(radio_ioctl_ops_group0, ldvarg90, radio_ioctl_ops_group4);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 4: ;
  if (ldv_state_variable_5 == 1) {
    vidioc_s_ctrl(radio_ioctl_ops_group0, ldvarg89, radio_ioctl_ops_group3);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 5: ;
  if (ldv_state_variable_5 == 1) {
    vidioc_g_ctrl(radio_ioctl_ops_group0, ldvarg88, radio_ioctl_ops_group3);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 6: ;
  if (ldv_state_variable_5 == 1) {
    radio_queryctrl(radio_ioctl_ops_group0, ldvarg87, ldvarg86);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 7: ;
  if (ldv_state_variable_5 == 1) {
    radio_s_input(radio_ioctl_ops_group0, ldvarg85, ldvarg84);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 8: ;
  if (ldv_state_variable_5 == 1) {
    radio_s_audio(radio_ioctl_ops_group0, ldvarg83, (struct v4l2_audio const *)ldvarg82);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 9: ;
  if (ldv_state_variable_5 == 1) {
    radio_s_tuner(radio_ioctl_ops_group0, ldvarg81, radio_ioctl_ops_group2);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 10: ;
  if (ldv_state_variable_5 == 1) {
    radio_g_audio(radio_ioctl_ops_group0, ldvarg80, ldvarg79);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 11: ;
  if (ldv_state_variable_5 == 1) {
    radio_enum_input(radio_ioctl_ops_group0, ldvarg78, ldvarg77);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 12: ;
  if (ldv_state_variable_5 == 1) {
    radio_g_tuner(radio_ioctl_ops_group0, ldvarg76, radio_ioctl_ops_group2);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  case 13: ;
  if (ldv_state_variable_5 == 1) {
    radio_querycap(radio_ioctl_ops_group0, ldvarg75, ldvarg74);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_47434;
  default: ;
  goto ldv_47434;
  }
  ldv_47434: ;
  return;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_10(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_lock_of_em28xx(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_16(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___14 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_lock_of_em28xx(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_20(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___18 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_lock_of_em28xx(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
int ldv_state_variable_7 ;
extern void msleep(unsigned int ) ;
extern int i2c_master_send(struct i2c_client const * , char const * , int ) ;
extern int i2c_master_recv(struct i2c_client const * , char * , int ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern int i2c_del_adapter(struct i2c_adapter * ) ;
void em28xx_do_i2c_scan(struct em28xx *dev ) ;
int em28xx_i2c_register(struct em28xx *dev ) ;
int em28xx_i2c_unregister(struct em28xx *dev ) ;
static unsigned int i2c_scan ;
static unsigned int i2c_debug ;
static int em2800_i2c_send_max4(struct em28xx *dev , unsigned char addr , char *buf ,
                                int len )
{ int ret ;
  int write_timeout ;
  unsigned char b2[6U] ;
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(len <= 0, 0L);
  if (tmp != 0L) {
    goto _L;
  } else {
    tmp___0 = ldv__builtin_expect(len > 4, 0L);
    if (tmp___0 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/media/usb/em28xx/em28xx.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-i2c.c.prepared"),
                           "i" (139), "i" (12UL));
      ldv_45535: ;
      goto ldv_45535;
    } else {
    }
  }
  b2[5] = (unsigned int )((unsigned char )len) + 127U;
  b2[4] = addr;
  b2[3] = (unsigned char )*buf;
  if (len > 1) {
    b2[2] = (unsigned char )*(buf + 1UL);
  } else {
  }
  if (len > 2) {
    b2[1] = (unsigned char )*(buf + 2UL);
  } else {
  }
  if (len > 3) {
    b2[0] = (unsigned char )*(buf + 3UL);
  } else {
  }
  ret = (*(dev->em28xx_write_regs))(dev, (int )(4U - (unsigned int )((u16 )len)),
                                    (char *)(& b2) + (unsigned long )(4 - len), len + 2);
  if (len + 2 != ret) {
    printk("\f%s: writing to i2c device failed (error=%i)\n", (char *)(& dev->name),
           ret);
    return (-5);
  } else {
  }
  write_timeout = 20;
  goto ldv_45537;
  ldv_45536:
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  if (len + 127 == ret) {
    return (len);
  } else {
  }
  msleep(5U);
  write_timeout = write_timeout + -5;
  ldv_45537: ;
  if (write_timeout > 0) {
    goto ldv_45536;
  } else {
    goto ldv_45538;
  }
  ldv_45538:
  printk("\f%s: i2c write timed out\n", (char *)(& dev->name));
  return (-5);
}
}
static int em2800_i2c_send_bytes(void *data , unsigned char addr , char *buf , short len )
{ char *bufPtr ;
  int ret ;
  int wrcount ;
  int count ;
  int maxLen ;
  struct em28xx *dev ;
  int tmp ;
  {
  bufPtr = buf;
  wrcount = 0;
  maxLen = 4;
  dev = (struct em28xx *)data;
  goto ldv_45552;
  ldv_45551: ;
  if (maxLen < (int )len) {
    count = maxLen;
  } else {
    count = (int )len;
  }
  ret = em2800_i2c_send_max4(dev, (int )addr, bufPtr, count);
  if (ret > 0) {
    len = (short )((int )((unsigned short )len) - (int )((unsigned short )count));
    bufPtr = bufPtr + (unsigned long )count;
    wrcount = wrcount + count;
  } else {
    if (ret < 0) {
      tmp = ret;
    } else {
      tmp = -14;
    }
    return (tmp);
  }
  ldv_45552: ;
  if ((int )len > 0) {
    goto ldv_45551;
  } else {
    goto ldv_45553;
  }
  ldv_45553: ;
  return (wrcount);
}
}
static int em2800_i2c_check_for_device(struct em28xx *dev , unsigned char addr )
{ char msg ;
  int ret ;
  int write_timeout ;
  unsigned int reg ;
  int tmp ;
  {
  msg = (char )addr;
  ret = (*(dev->em28xx_write_regs))(dev, 4, & msg, 1);
  if (ret < 0) {
    printk("\f%s: setting i2c device address failed (error=%i)\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  msg = -124;
  ret = (*(dev->em28xx_write_regs))(dev, 5, & msg, 1);
  if (ret < 0) {
    printk("\f%s: preparing i2c read failed (error=%i)\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  write_timeout = 20;
  goto ldv_45563;
  ldv_45562:
  tmp = (*(dev->em28xx_read_reg))(dev, 5);
  reg = (unsigned int )tmp;
  if (reg == 148U) {
    return (-19);
  } else
  if (reg == 132U) {
    return (0);
  } else {
  }
  msleep(5U);
  write_timeout = write_timeout + -5;
  ldv_45563: ;
  if (write_timeout > 0) {
    goto ldv_45562;
  } else {
    goto ldv_45564;
  }
  ldv_45564: ;
  return (-19);
}
}
static int em2800_i2c_recv_bytes(struct em28xx *dev , unsigned char addr , char *buf ,
                                 int len )
{ int ret ;
  {
  ret = em2800_i2c_check_for_device(dev, (int )addr);
  if (ret != 0) {
    printk("\f%s: preparing read at i2c address 0x%x failed (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    return (ret);
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 0, 3, buf, len);
  if (ret < 0) {
    printk("\f%s: reading from i2c device at 0x%x failed (error=%i)", (char *)(& dev->name),
           (int )addr, ret);
    return (ret);
  } else {
  }
  return (ret);
}
}
static int em28xx_i2c_send_bytes(void *data , unsigned char addr , char *buf , short len ,
                                 int stop )
{ int wrcount ;
  struct em28xx *dev ;
  int write_timeout ;
  int ret ;
  int tmp ;
  {
  wrcount = 0;
  dev = (struct em28xx *)data;
  if (stop != 0) {
    tmp = 2;
  } else {
    tmp = 3;
  }
  wrcount = (*(dev->em28xx_write_regs_req))(dev, tmp, (int )addr, buf, (int )len);
  write_timeout = 20;
  goto ldv_45585;
  ldv_45584:
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  if (ret == 0) {
    goto ldv_45583;
  } else {
  }
  msleep(5U);
  write_timeout = write_timeout + -5;
  ldv_45585: ;
  if (write_timeout > 0) {
    goto ldv_45584;
  } else {
    goto ldv_45583;
  }
  ldv_45583: ;
  return (wrcount);
}
}
static int em28xx_i2c_recv_bytes(struct em28xx *dev , unsigned char addr , char *buf ,
                                 int len )
{ int ret ;
  int tmp ;
  {
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 2, (int )addr, buf, len);
  if (ret < 0) {
    printk("\f%s: reading i2c device failed (error=%i)\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  tmp = (*(dev->em28xx_read_reg))(dev, 5);
  if (tmp != 0) {
    return (-19);
  } else {
  }
  return (ret);
}
}
static int em28xx_i2c_check_for_device(struct em28xx *dev , unsigned char addr )
{ int ret ;
  int tmp ;
  {
  ret = (*(dev->em28xx_read_reg_req))(dev, 2, (int )addr);
  if (ret < 0) {
    printk("\f%s: reading from i2c device failed (error=%i)\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  tmp = (*(dev->em28xx_read_reg))(dev, 5);
  if (tmp != 0) {
    return (-19);
  } else {
  }
  return (0);
}
}
static int em28xx_i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs , int num )
{ struct em28xx *dev ;
  int addr ;
  int rc ;
  int i ;
  int byte ;
  char *tmp ;
  char *tmp___0 ;
  {
  dev = (struct em28xx *)i2c_adap->algo_data;
  if (num <= 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_45617;
  ldv_45616:
  addr = (int )(msgs + (unsigned long )i)->addr << 1;
  if (i2c_debug > 1U) {
    if (num + -1 == i) {
      tmp = (char *)"stop";
    } else {
      tmp = (char *)"nonstop";
    }
    if ((int )(msgs + (unsigned long )i)->flags & 1) {
      tmp___0 = (char *)"read";
    } else {
      tmp___0 = (char *)"write";
    }
    printk("\017%s at %s: %s %s addr=%x len=%d:", (char *)(& dev->name), "em28xx_i2c_xfer",
           tmp___0, tmp, addr, (int )(msgs + (unsigned long )i)->len);
  } else {
  }
  if ((unsigned int )(msgs + (unsigned long )i)->len == 0U) {
    if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
      rc = em2800_i2c_check_for_device(dev, (int )((unsigned char )addr));
    } else {
      rc = em28xx_i2c_check_for_device(dev, (int )((unsigned char )addr));
    }
    if (rc < 0) {
      if (i2c_debug > 1U) {
        printk("\017%s at %s:  no device\n", (char *)(& dev->name), "em28xx_i2c_xfer");
      } else {
      }
      return (rc);
    } else {
    }
  } else
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
      rc = em2800_i2c_recv_bytes(dev, (int )((unsigned char )addr), (char *)(msgs + (unsigned long )i)->buf,
                                 (int )(msgs + (unsigned long )i)->len);
    } else {
      rc = em28xx_i2c_recv_bytes(dev, (int )((unsigned char )addr), (char *)(msgs + (unsigned long )i)->buf,
                                 (int )(msgs + (unsigned long )i)->len);
    }
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_45610;
      ldv_45609:
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      ldv_45610: ;
      if ((int )(msgs + (unsigned long )i)->len > byte) {
        goto ldv_45609;
      } else {
        goto ldv_45611;
      }
      ldv_45611: ;
    } else {
    }
  } else {
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_45613;
      ldv_45612:
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      ldv_45613: ;
      if ((int )(msgs + (unsigned long )i)->len > byte) {
        goto ldv_45612;
      } else {
        goto ldv_45614;
      }
      ldv_45614: ;
    } else {
    }
    if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
      rc = em2800_i2c_send_bytes((void *)dev, (int )((unsigned char )addr), (char *)(msgs + (unsigned long )i)->buf,
                                 (int )((short )(msgs + (unsigned long )i)->len));
    } else {
      rc = em28xx_i2c_send_bytes((void *)dev, (int )((unsigned char )addr), (char *)(msgs + (unsigned long )i)->buf,
                                 (int )((short )(msgs + (unsigned long )i)->len),
                                 num + -1 == i);
    }
  }
  if (rc < 0) {
    goto err;
  } else {
  }
  if (i2c_debug > 1U) {
    printk("\n");
  } else {
  }
  i = i + 1;
  ldv_45617: ;
  if (i < num) {
    goto ldv_45616;
  } else {
    goto ldv_45618;
  }
  ldv_45618: ;
  return (num);
  err: ;
  if (i2c_debug > 1U) {
    printk("\017%s at %s:  ERROR: %i\n", (char *)(& dev->name), "em28xx_i2c_xfer",
           rc);
  } else {
  }
  return (rc);
}
}
__inline static unsigned long em28xx_hash_mem(char *buf , int length , int bits )
{ unsigned long hash ;
  unsigned long l ;
  int len ;
  unsigned char c ;
  char *tmp ;
  {
  hash = 0UL;
  l = 0UL;
  len = 0;
  ldv_45628: ;
  if (len == length) {
    c = (unsigned char )len;
    len = -1;
  } else {
    tmp = buf;
    buf = buf + 1;
    c = (unsigned char )*tmp;
  }
  l = (l << 8) | (unsigned long )c;
  len = len + 1;
  if ((len & 3) == 0) {
    hash = (hash ^ l) * 2654404609UL;
  } else {
  }
  if (len != 0) {
    goto ldv_45628;
  } else {
    goto ldv_45629;
  }
  ldv_45629: ;
  return ((hash >> (32 - bits)) & 4294967295UL);
}
}
static int em28xx_i2c_eeprom(struct em28xx *dev , unsigned char *eedata , int len )
{ unsigned char buf ;
  unsigned char *p ;
  struct em28xx_eeprom *em_eeprom ;
  int i ;
  int err ;
  int size ;
  int block ;
  {
  p = eedata;
  em_eeprom = (struct em28xx_eeprom *)eedata;
  size = len;
  if (((unsigned int )dev->chip_id == 65U || (unsigned int )dev->chip_id == 113U) || (unsigned int )dev->chip_id == 68U) {
    return (0);
  } else {
  }
  dev->i2c_client.addr = 80U;
  err = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client), (char *)(& buf),
                        0);
  if (err < 0) {
    printk("\v%s: board has no eeprom\n", (char *)(& dev->name));
    memset((void *)eedata, 0, (size_t )len);
    return (-19);
  } else {
  }
  buf = 0U;
  err = i2c_master_send((struct i2c_client const *)(& dev->i2c_client), (char const *)(& buf),
                        1);
  if (err != 1) {
    printk("\016%s: Huh, no eeprom present (err=%d)?\n", (char *)(& dev->name), err);
    return (err);
  } else {
  }
  goto ldv_45643;
  ldv_45642: ;
  if (size > 16) {
    block = 16;
  } else {
    block = size;
  }
  err = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client), (char *)p,
                        block);
  if (err != block) {
    printk("\f%s: i2c eeprom read error (err=%d)\n", (char *)(& dev->name), err);
    return (err);
  } else {
  }
  size = size - block;
  p = p + (unsigned long )block;
  ldv_45643: ;
  if (size > 0) {
    goto ldv_45642;
  } else {
    goto ldv_45644;
  }
  ldv_45644:
  i = 0;
  goto ldv_45646;
  ldv_45645: ;
  if (((unsigned int )i & 15U) == 0U) {
    printk("\016%s: i2c eeprom %02x:", (char *)(& dev->name), i);
  } else {
  }
  printk(" %02x", (int )*(eedata + (unsigned long )i));
  if (i % 16 == 15) {
    printk("\n");
  } else {
  }
  i = i + 1;
  ldv_45646: ;
  if (i < len) {
    goto ldv_45645;
  } else {
    goto ldv_45647;
  }
  ldv_45647: ;
  if (em_eeprom->id == 2506615578U) {
    dev->hash = em28xx_hash_mem((char *)eedata, len, 32);
  } else {
  }
  printk("\016%s: EEPROM ID= 0x%08x, EEPROM hash = 0x%08lx\n", (char *)(& dev->name),
         em_eeprom->id, dev->hash);
  printk("\016%s: EEPROM info:\n", (char *)(& dev->name));
  switch (((int )em_eeprom->chip_conf >> 4) & 3) {
  case 0:
  printk("\016%s:\tNo audio on board.\n", (char *)(& dev->name));
  goto ldv_45649;
  case 1:
  printk("\016%s:\tAC97 audio (5 sample rates)\n", (char *)(& dev->name));
  goto ldv_45649;
  case 2:
  printk("\016%s:\tI2S audio, sample rate=32k\n", (char *)(& dev->name));
  goto ldv_45649;
  case 3:
  printk("\016%s:\tI2S audio, 3 sample rates\n", (char *)(& dev->name));
  goto ldv_45649;
  }
  ldv_45649: ;
  if (((int )em_eeprom->chip_conf & 8) != 0) {
    printk("\016%s:\tUSB Remote wakeup capable\n", (char *)(& dev->name));
  } else {
  }
  if (((int )em_eeprom->chip_conf & 4) != 0) {
    printk("\016%s:\tUSB Self power capable\n", (char *)(& dev->name));
  } else {
  }
  switch ((int )em_eeprom->chip_conf & 3) {
  case 0:
  printk("\016%s:\t500mA max power\n", (char *)(& dev->name));
  goto ldv_45654;
  case 1:
  printk("\016%s:\t400mA max power\n", (char *)(& dev->name));
  goto ldv_45654;
  case 2:
  printk("\016%s:\t300mA max power\n", (char *)(& dev->name));
  goto ldv_45654;
  case 3:
  printk("\016%s:\t200mA max power\n", (char *)(& dev->name));
  goto ldv_45654;
  }
  ldv_45654:
  printk("\016%s:\tTable at 0x%02x, strings=0x%04x, 0x%04x, 0x%04x\n", (char *)(& dev->name),
         (int )em_eeprom->string_idx_table, (int )em_eeprom->string1, (int )em_eeprom->string2,
         (int )em_eeprom->string3);
  return (0);
}
}
static u32 functionality(struct i2c_adapter *adap )
{
  {
  return (251592712U);
}
}
static struct i2c_algorithm em28xx_algo = {& em28xx_i2c_xfer, 0, & functionality};
static struct i2c_adapter em28xx_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& em28xx_algo), 0, {{{{0U}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              {{0,
                                                                                0}},
                                                                              0, 0,
                                                                              0, 0,
                                                                              0, 0},
    0, 0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0}, 0, 0, {{0},
                                                                                {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
           0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0,
                     (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                     {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                   {0, 0}}}, 0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                     0, 0, 0UL, 0,
                                                                     0, 0, {(char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0},
                                                                     {0, {0, 0}, 0,
                                                                      0, 0UL}}, 0UL,
                     {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}, {0}, {0},
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                     (unsigned char)0, (unsigned char)0, 0, 0, 0, 0, 0UL, 0UL, 0UL,
                     0UL, 0, 0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0}, 0U,
           0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0, {0, 0},
                                                                         {{0}}}, 0,
           0, 0, 0}, 0, {'e', 'm', '2', '8', 'x', 'x', '\000'}, {0U, {{{{{{0U}}, 0U,
                                                                         0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                      {0, 0}}}, {{0},
                                                                                 {{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
    {0, 0}};
static struct i2c_client em28xx_client_template =
     {(unsigned short)0, (unsigned short)0, {'e', 'm', '2', '8', 'x', 'x', ' ', 'i',
                                           'n', 't', 'e', 'r', 'n', 'a', 'l', '\000',
                                           (char)0, (char)0, (char)0, (char)0}, 0,
    0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, (unsigned char)0, (unsigned char)0, (unsigned char)0,
               (unsigned char)0, (unsigned char)0}, 0, 0, {{0}, {{{{{0U}}, 0U, 0U,
                                                                   0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                           {0, 0}, 0, 0, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
        0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0, (_Bool)0,
                  (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0},
                  {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0},
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {0},
                  {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, 0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL,
                  0, 0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
        {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0}, 0, {0, 0}};
static char *i2c_devs[128U] =
  { 0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, (char *)"saa7113h", 0, 0,
        0, (char *)"drxk", 0, 0,
        0, 0, 0, 0,
        (char *)"remote IR sensor", 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        (char *)"msp34xx", 0, 0, (char *)"tda9887",
        (char *)"msp34xx", 0, 0, (char *)"remote IR sensor",
        0, 0, 0, 0,
        0, 0, 0, 0,
        (char *)"eeprom", 0, 0, 0,
        0, 0, 0, 0,
        (char *)"tda9874", 0, 0, 0,
        (char *)"tvp5150a", (char *)"webcam sensor or tvp5150a", 0, 0,
        (char *)"tuner (analog)", (char *)"tuner (analog)", (char *)"tuner (analog)", (char *)"tuner (analog)"};
void em28xx_do_i2c_scan(struct em28xx *dev )
{ u8 i2c_devicelist[128U] ;
  unsigned char buf ;
  int i ;
  int rc ;
  char *tmp ;
  {
  memset((void *)(& i2c_devicelist), 0, 128UL);
  i = 0;
  goto ldv_45678;
  ldv_45677:
  dev->i2c_client.addr = (unsigned short )i;
  rc = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client), (char *)(& buf),
                       0);
  if (rc < 0) {
    goto ldv_45676;
  } else {
  }
  i2c_devicelist[i] = (u8 )i;
  if ((unsigned long )i2c_devs[i] != (unsigned long )((char *)0)) {
    tmp = i2c_devs[i];
  } else {
    tmp = (char *)"???";
  }
  printk("\016%s: found i2c device @ 0x%x [%s]\n", (char *)(& dev->name), i << 1,
         tmp);
  ldv_45676:
  i = i + 1;
  ldv_45678: ;
  if ((unsigned int )i <= 127U) {
    goto ldv_45677;
  } else {
    goto ldv_45679;
  }
  ldv_45679:
  dev->i2c_hash = em28xx_hash_mem((char *)(& i2c_devicelist), 128, 32);
  return;
}
}
int em28xx_i2c_register(struct em28xx *dev )
{ int retval ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev->em28xx_write_regs == (unsigned long )((int (*)(struct em28xx * ,
                                                                                             u16 ,
                                                                                             char * ,
                                                                                             int ))0),
                         0L);
  if (tmp != 0L) {
    goto _L;
  } else {
    tmp___0 = ldv__builtin_expect((unsigned long )dev->em28xx_read_reg == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                 u16 ))0),
                               0L);
    if (tmp___0 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/media/usb/em28xx/em28xx.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-i2c.c.prepared"),
                           "i" (605), "i" (12UL));
      ldv_45686: ;
      goto ldv_45686;
    } else {
    }
  }
  tmp___1 = ldv__builtin_expect((unsigned long )dev->em28xx_write_regs_req == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                     u8 ,
                                                                                                     u16 ,
                                                                                                     char * ,
                                                                                                     int ))0),
                             0L);
  if (tmp___1 != 0L) {
    goto _L___0;
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )dev->em28xx_read_reg_req == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                     u8 ,
                                                                                                     u16 ))0),
                               0L);
    if (tmp___2 != 0L) {
      _L___0:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/media/usb/em28xx/em28xx.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-i2c.c.prepared"),
                           "i" (606), "i" (12UL));
      ldv_45687: ;
      goto ldv_45687;
    } else {
    }
  }
  dev->i2c_adap = em28xx_adap_template;
  dev->i2c_adap.dev.parent = & (dev->udev)->dev;
  strcpy((char *)(& dev->i2c_adap.name), (char const *)(& dev->name));
  dev->i2c_adap.algo_data = (void *)dev;
  i2c_set_adapdata(& dev->i2c_adap, (void *)(& dev->v4l2_dev));
  retval = i2c_add_adapter(& dev->i2c_adap);
  if (retval < 0) {
    printk("\v%s: %s: i2c_add_adapter failed! retval [%d]\n", (char *)(& dev->name),
           "em28xx_i2c_register", retval);
    return (retval);
  } else {
  }
  dev->i2c_client = em28xx_client_template;
  dev->i2c_client.adapter = & dev->i2c_adap;
  retval = em28xx_i2c_eeprom(dev, (unsigned char *)(& dev->eedata), 256);
  if (retval < 0 && retval != -19) {
    printk("\v%s: %s: em28xx_i2_eeprom failed! retval [%d]\n", (char *)(& dev->name),
           "em28xx_i2c_register", retval);
    return (retval);
  } else {
  }
  if (i2c_scan != 0U) {
    em28xx_do_i2c_scan(dev);
  } else {
  }
  return (0);
}
}
int em28xx_i2c_unregister(struct em28xx *dev )
{
  {
  i2c_del_adapter(& dev->i2c_adap);
  return (0);
}
}
struct i2c_adapter *ldvarg61 ;
void ldv_main_exported_7(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    functionality(ldvarg61);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_45697;
  default: ;
  goto ldv_45697;
  }
  ldv_45697: ;
  return;
}
}
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_46(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
int ldv_mutex_trylock_64(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_76(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_75(struct mutex *ldv_func_arg1 ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_8 ;
int ldv_state_variable_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int usb_counter ;
int ldv_state_variable_4 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool schedule_work(struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
extern int __request_module(bool , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{ void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{ struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff78UL);
}
}
extern struct usb_device *usb_get_dev(struct usb_device * ) ;
extern void usb_put_dev(struct usb_device * ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_77(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_78(struct usb_driver *arg ) ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device * , struct i2c_adapter * ,
                                                     struct i2c_board_info * , unsigned short const * ) ;
extern unsigned short v4l2_i2c_subdev_addr(struct v4l2_subdev * ) ;
extern unsigned short const *v4l2_i2c_tuner_addrs(enum v4l2_i2c_tuner_type ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_disconnect(struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
int em28xx_read_reg_req(struct em28xx *dev , u8 req , u16 reg ) ;
int em28xx_write_regs_req(struct em28xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int em28xx_audio_setup(struct em28xx *dev ) ;
int em28xx_alloc_isoc(struct em28xx *dev , enum em28xx_mode mode , int max_packets ,
                      int num_bufs , int max_pkt_size ) ;
int em28xx_gpio_set(struct em28xx *dev , struct em28xx_reg_seq *gpio ) ;
void em28xx_init_extension(struct em28xx *dev ) ;
void em28xx_close_extension(struct em28xx *dev ) ;
struct usb_device_id em28xx_id_table[77U] ;
unsigned int const em28xx_bcount ;
int em28xx_tuner_callback(void *ptr , int component , int command , int arg ) ;
static int tuner = -1;
static unsigned int disable_ir ;
static unsigned int disable_usb_speed_check ;
static unsigned int card[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned long em28xx_devused ;
static void em28xx_pre_card_setup(struct em28xx *dev ) ;
static struct em28xx_reg_seq default_analog[2U] = { {8, 109U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq default_digital[2U] = { {8, 110U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900_analog[3U] = { {8, 45U, 239U, 10},
        {5, 255U, 16U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900_digital[4U] = { {8, 46U, 239U, 10},
        {4, 4U, 15U, 10},
        {4, 12U, 15U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900R2_digital[3U] = { {8, 46U, 239U, 10},
        {4, 12U, 15U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2880_msi_digivox_ad_analog[2U] = { {8, 105U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2882_kworld_315u_digital[6U] = { {8, 255U, 255U, 10},
        {8, 254U, 255U, 10},
        {4, 4U, 255U, 10},
        {4, 12U, 255U, 10},
        {8, 126U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2882_kworld_315u_tuner_gpio[5U] = { {4, 8U, 255U, 10},
        {4, 12U, 255U, 10},
        {4, 8U, 255U, 10},
        {4, 12U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_330u_analog[3U] = { {8, 109U, 239U, 10},
        {4, 0U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_330u_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq evga_indtube_analog[2U] = { {8, 121U, 255U, 60},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq evga_indtube_digital[4U] = { {8, 122U, 255U, 1},
        {4, 4U, 255U, 10},
        {4, 12U, 255U, 1},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_a340_digital[2U] = { {8, 109U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pinnacle_hybrid_pro_analog[2U] = { {8, 253U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pinnacle_hybrid_pro_digital[4U] = { {8, 110U, 239U, 10},
        {4, 4U, 255U, 100},
        {4, 12U, 255U, 1},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_cinergy_USB_XS_FR_analog[3U] = { {8, 109U, 239U, 10},
        {4, 0U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_cinergy_USB_XS_FR_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq reddo_dvb_c_usb_box[8U] =
  { {8, 254U, 255U, 10},
        {8, 222U, 255U, 10},
        {8, 254U, 255U, 10},
        {8, 255U, 255U, 10},
        {8, 127U, 255U, 10},
        {8, 111U, 255U, 10},
        {8, 255U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq default_tuner_gpio[4U] = { {8, 16U, 16U, 10},
        {8, 0U, 16U, 10},
        {8, 16U, 16U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_unmute_tv_gpio[2U] = { {8, 5U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_unmute_svid_gpio[2U] = { {8, 4U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_mute_gpio[2U] = { {8, 6U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_av350_mute_gpio[2U] = { {8, 255U, 127U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_av350_unmute_gpio[2U] = { {8, 255U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq silvercrest_reg_seq[3U] = { {8, 255U, 255U, 10},
        {8, 1U, 247U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq vc211a_enable[4U] = { {8, 255U, 7U, 10},
        {8, 255U, 15U, 10},
        {8, 255U, 11U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq dikom_dk300_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq leadership_digital[2U] = { {128, 112U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq leadership_reset[4U] = { {128, 240U, 255U, 10},
        {128, 176U, 255U, 10},
        {128, 240U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_290e[4U] = { {128, 0U, 255U, 80},
        {128, 64U, 255U, 80},
        {128, 192U, 255U, 80},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_460e[6U] = { {128, 1U, 255U, 50},
        {13, 255U, 255U, 50},
        {128, 65U, 255U, 50},
        {13, 66U, 255U, 50},
        {128, 97U, 255U, 50},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq maxmedia_ub425_tc[4U] = { {128, 131U, 255U, 100},
        {128, 195U, 255U, 100},
        {128, 67U, 255U, 0},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_510e[4U] = { {128, 16U, 255U, 100},
        {128, 20U, 255U, 100},
        {128, 84U, 255U, 40},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_520e[5U] = { {128, 16U, 255U, 100},
        {128, 20U, 255U, 100},
        {128, 84U, 255U, 40},
        {128, 212U, 255U, 0},
        {-1, 255U, 255U, -1}};
struct em28xx_board em28xx_boards[88U] =
  { {(char *)"Unknown EM2800 video grabber", 0, 4, 0, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Unknown EM2750/28xx video grabber", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Cinergy 250 USB", 0, 37, 0, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle PCTV USB 2", 0, 37, 0, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hauppauge WinTV USB 2", 0, 43, 0, 97U, 0, 0, 0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {5, 2U, 2236960,
                                                                     0, 0}, {0, 0U,
                                                                             0, 0,
                                                                             0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"MSI VOX USB 2.0", 0, 37, 0, 97U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 4U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Cinergy 200 USB", 0, 66, 0, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Leadtek Winfast USB II", 0, 37, 0, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Kworld USB2800", 0, 42, 0, 1U, 0, 0, 0, 0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle Dazzle DVC 90/100/101/107 / Kaiser Baas Video to DVD maker / Kworld DVD Maker 2 / Plextor ConvertX PX-AV100U",
      0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hauppauge WinTV HVR 900", 0, 71, 0, 1U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Terratec Hybrid XS", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)},
                                {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-terratec-cinergy-xs"},
        {(char *)"Kworld PVR TV 2800 RF",
      0, 0, 0, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Prodigy XS", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"SIIG AVTuner-PVR / Pixelview Prolink PlayTV USB 2.0", 0, 59, 0, 1U,
      0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0, 2,
      0, {{6, 2U, 0, 5, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"V-Gear PocketTV", 0, 37, 0, 1U, 0, 0, 0, 0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hauppauge WinTV HVR 950", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Pinnacle PCTV HD Pro Stick", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Hauppauge WinTV HVR 900 (R2)", 0, 71, 0, 1U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900R2_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"EM2860/SAA711X Reference Design", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{5, 9U, 0, 0, 0}, {1, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"AMD ATI TV Wonder HD 600", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-ati-tv-wonder-hd-600"},
        {(char *)"eMPIA Technology, Inc. GrabBeeX+ Video Encoder",
      0, 4, 0, 0U, 0, 0, 0, 0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0, 2,
      0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"EM2710/EM2750/EM2751 webcam grabber", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, 8U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{1, 0U, 0, 0, (struct em28xx_reg_seq *)(& silvercrest_reg_seq)},
                                {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Huaqi DLCW-130", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      1U, (unsigned char)0, 10U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{1, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"D-Link DUB-T210 TV Tuner", 0, 37, 0, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei UTV310", 0, 69, 0, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 1U, 1, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hercules Smart TV USB 2.0", 0, 37, 0, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle PCTV USB 2 (Philips FM1216ME)", 0, 38, 0, 1U, 0, 0, 0, 0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 0,
                                                                     0}, {1, 0U, 1,
                                                                          0, 0}, {5,
                                                                                  9U,
                                                                                  1,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Leadtek Winfast USB II Deluxe", 0, 38, 0, 73U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      88U, 2, 1, {{6, 4U, 6, 0, 0}, {1, 5U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0,
                                                                         0, 0}}, {10,
                                                                                  0U,
                                                                                  6,
                                                                                  0,
                                                                                  0},
      0},
        {(char *)"EM2860/TVP5150 Reference Design", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 1, 0, {{1, 1U, 1, 0, 0}, {5, 2U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Videology 20K14XUSB USB2.0", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{1, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Usbgear VD204v9", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Supercomp USB 2.0 TV", 0, 43, 0, 97U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 0, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Elgato Video Capture", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Cinergy A Hybrid XS", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Typhoon DVD Maker", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"NetGMBH Cam", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{1, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei UTV330", 0, 69, 0, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Yakumo MovieMixer", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 1, 0, 0}, {5, 2U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld PVRTV 300U", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 1,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  1,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Plextor ConvertX PX-TV100U", 0, 69, 0, 1U, 0, 0, 0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 71U, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                                  {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                                  {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                                  {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0,
                                                                      0}, 0},
        {(char *)"Kworld 350 U DVB-T", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Kworld 355 U DVB-T", 0, 4, 0, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Cinergy T XS", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Terratec Cinergy T XS (MT2060)", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle PCTV DVB-T", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 34U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Compro, VideoMate U3", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld DVB-T 305U", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 1,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  1,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"KWorld DVB-T 310U", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}, {1, 1U, 1,
                                                                          0, (struct em28xx_reg_seq *)(& default_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"MSI DigiVox A/D", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"MSI DigiVox A/D II", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Terratec Hybrid XS Secam", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)},
                                {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, 0},
        {(char *)"DNT DA2 Hybrid", 0, 71, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& default_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& default_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& default_analog)},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Pinnacle Hybrid Pro", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, 0},
        {(char *)"Kworld VS-DVB-T 323UR", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& kworld_330u_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 1, 0, 0}, {5, 2U, 1, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-kworld-315u"},
        {(char *)"Terratec Cinnergy Hybrid T USB XS (em2882)", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-terratec-cinergy-xs"},
        {(char *)"Pinnacle Hybrid Pro (330e)",
      0, 71, 0, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900R2_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Kworld PlusTV HD Hybrid 330", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& kworld_330u_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, 76U, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U,
                                                                              0, 1408,
                                                                              (struct em28xx_reg_seq *)(& kworld_330u_analog)},
                                                                             {1, 1U,
                                                                              1, 1408,
                                                                              (struct em28xx_reg_seq *)(& kworld_330u_analog)},
                                                                             {5, 2U,
                                                                              1, 0,
                                                                              (struct em28xx_reg_seq *)(& kworld_330u_analog)},
                                                                             {0, 0U,
                                                                              0, 0,
                                                                              0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Compro VideoMate ForYou/Stereo", 0, 37, 0, 1U, 0, 0, 0, (struct em28xx_reg_seq *)(& compro_mute_gpio),
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 176U, 1, 1, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& compro_unmute_tv_gpio)},
                                                       {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& compro_unmute_svid_gpio)},
                                                       {0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {0, 0, 0, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hauppauge WinTV HVR 850", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Pixelview PlayTV Box 4 USB 2.0", 0, 59, 0, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 5, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei TVR200", 0, 37, 0, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Kaiomy TVnPC U2", 3, 71, 97, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 1,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  1,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {10, 0U,
                                                                           1, 0, 0},
      (char *)"rc-kaiomy"},
        {(char *)"Easy Cap Capture DC-60", 2, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"IO-DATA GV-MVP/SZ", 0, 43, 0, 1U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 0,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Empire dual TV", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}, {1, 1U, 1,
                                                                          0, (struct em28xx_reg_seq *)(& default_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Grabby", 2, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec AV350", 2, 4, 0, 0U, 0, 0, 0, (struct em28xx_reg_seq *)(& terratec_av350_mute_gpio),
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 7U,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{1, 1U, 128, 0,
                                                                     (struct em28xx_reg_seq *)(& terratec_av350_unmute_gpio)},
                                                                    {5, 2U, 128, 0,
                                                                     (struct em28xx_reg_seq *)(& terratec_av350_unmute_gpio)},
                                                                    {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld ATSC 315U HDTV TV Box", 0, 60, 0, 1U, (struct em28xx_reg_seq *)(& em2882_kworld_315u_digital),
      0, (struct em28xx_reg_seq *)(& em2882_kworld_315u_tuner_gpio), 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, 7U, 64U, (unsigned char)0, (unsigned short)0,
      2, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-kworld-315u"},
        {(char *)"Evga inDtube", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& evga_indtube_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& evga_indtube_analog)}, {1,
                                                                               1U,
                                                                               1,
                                                                               0,
                                                                               (struct em28xx_reg_seq *)(& evga_indtube_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& evga_indtube_analog)}, {0,
                                                                               0U,
                                                                               0,
                                                                               0,
                                                                               0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-evga-indtube"},
        {(char *)"Silvercrest Webcam 1.3mpix", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{1, 0U, 0, 0, (struct em28xx_reg_seq *)(& silvercrest_reg_seq)},
                                                  {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei UTV330+", 0, 69, 0, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-gadmei-rm008z"},
        {(char *)"Reddo DVB-C USB TV Box", 0, 4, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& reddo_dvb_c_usb_box),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Actionmaster/LinXcel/Digitus VC211A", 0, 4, 0, 0U, 0, 0, 0, 0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, (struct em28xx_reg_seq *)(& vc211a_enable)},
                                                  {5, 9U, 1, 0, (struct em28xx_reg_seq *)(& vc211a_enable)},
                                                  {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Dikom DK300", 0, 71, 0, 0U, (struct em28xx_reg_seq *)(& dikom_dk300_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
             {0, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld PlusTV 340U or UB435-Q (ATSC)", 0, 4, 0, 0U, (struct em28xx_reg_seq *)(& kworld_a340_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"EM2874 Leadership ISDBT", 0, 4, 0, 0U, (struct em28xx_reg_seq *)(& leadership_digital),
      0, (struct em28xx_reg_seq *)(& leadership_reset), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 68U, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"PCTV nanoStick T2 290e", 0, 4, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_290e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      68U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Terratec Cinergy H5", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 69U, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"PCTV DVB-S2 Stick (460e)", 0, 4, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_460e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      69U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Hauppauge WinTV HVR 930C", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 69U,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Terratec Cinergy HTC Stick", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 69U,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-nec-terratec-cinergy-xs"},
        {(char *)"Honestech Vidbox NW03", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"MaxMedia UB425-TC", 0, 4, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& maxmedia_ub425_tc),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      69U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"PCTV QuatroStick (510e)", 0, 4, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_510e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      69U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"PCTV QuatroStick nano (520e)", 0, 4, 0, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_520e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      69U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Terratec Cinergy HTC USB XS", 0, 4, 0, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 69U,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-nec-terratec-cinergy-xs"}};
unsigned int const em28xx_bcount = 88U;
struct usb_device_id em28xx_id_table[77U] =
  { {3U, 60186U, 10064U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 22UL},
        {3U, 60186U, 10065U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 22UL},
        {3U, 60186U, 10240U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {3U, 60186U, 10000U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10272U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10273U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10336U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10337U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10338U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10339U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10352U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10369U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10371U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10344U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10357U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 58112U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 39UL},
        {3U, 60186U, 58115U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 63UL},
        {3U, 60186U, 58117U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 47UL},
        {3U, 60186U, 58128U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 49UL},
        {3U, 60186U, 41747U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 69UL},
        {3U, 60186U, 41750U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 57UL},
        {3U, 60186U, 58144U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 50UL},
        {3U, 60186U, 58147U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 54UL},
        {3U, 60186U, 58192U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 41UL},
        {3U, 60186U, 58197U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 60186U, 10241U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 21UL},
        {3U, 60186U, 58199U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 60186U, 58201U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 7040U, 58114U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 7040U, 58116U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 3277U, 54U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 3277U, 76U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      51UL},
        {3U, 3277U, 79U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      34UL},
        {3U, 3277U, 94U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      55UL},
        {3U, 3277U, 66U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      55UL},
        {3U, 3277U, 67U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      43UL},
        {3U, 3277U, 142U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      87UL},
        {3U, 3277U, 172U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      87UL},
        {3U, 3277U, 4258U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 4269U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 132U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      68UL},
        {3U, 3277U, 150U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      67UL},
        {3U, 3277U, 4271U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      67UL},
        {3U, 3277U, 178U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      82UL},
        {3U, 4057U, 51U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      33UL},
        {3U, 6235U, 10352U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      46UL},
        {3U, 6235U, 8257U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      58UL},
        {3U, 8256U, 16896U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 8256U, 16897U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 8256U, 25856U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      10UL},
        {3U, 8256U, 25858U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      18UL},
        {3U, 8256U, 25875U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25879U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25883U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25887U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      60UL},
        {3U, 1080U, 45058U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      20UL},
        {3U, 8193U, 61714U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      24UL},
        {3U, 8964U, 519U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8964U, 520U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 8964U, 538U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8964U, 550U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      56UL},
        {3U, 8964U, 551U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17UL},
        {3U, 1043U, 24611U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 2363U, 40963U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 2363U, 40965U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      40UL},
        {3U, 1211U, 1301U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65UL},
        {3U, 60186U, 20646U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 37UL},
        {3U, 7040U, 41792U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      76UL},
        {3U, 8211U, 591U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      78UL},
        {3U, 8211U, 588U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      80UL},
        {3U, 8256U, 5637U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      81UL},
        {3U, 60186U, 20486U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 83UL},
        {3U, 7040U, 58121U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      64UL},
        {3U, 7040U, 58405U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      84UL},
        {3U, 8964U, 578U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      85UL},
        {3U, 8211U, 593U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      86UL},
        {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 0UL}};
struct usb_device_id const __mod_usb_device_table ;
static struct em28xx_hash_table em28xx_eeprom_hash[8U] =
  { {1826642575UL, 14U, 59U},
        {1925995147UL, 61U, 59U},
        {2523530305UL, 48U, 71U},
        {376046657UL, 66U, 71U},
        {3471067801UL, 70U, 71U},
        {3095685920UL, 53U, 71U},
        {1677087677UL, 73U, 4U},
        {1318138946UL, 75U, 71U}};
static struct em28xx_hash_table em28xx_i2c_hash[7U] = { {2959749827UL, 6U, 37U},
        {4111597795UL, 15U, 37U},
        {463798400UL, 19U, 4U},
        {2004877440UL, 29U, 4U},
        {3306291427UL, 62U, 37U},
        {1269104768UL, 72U, 69U},
        {1803550848UL, 77U, 4U}};
static unsigned short saa711x_addrs[5U] = { 37U, 36U, 33U, 32U,
        65534U};
static unsigned short tvp5150_addrs[3U] = { 92U, 93U, 65534U};
static unsigned short msp3400_addrs[3U] = { 64U, 68U, 65534U};
int em28xx_tuner_callback(void *ptr , int component , int command , int arg )
{ int rc ;
  struct em28xx *dev ;
  {
  rc = 0;
  dev = (struct em28xx *)ptr;
  if (dev->tuner_type != 71 && dev->tuner_type != 76) {
    return (0);
  } else {
  }
  if (command != 0 && command != 0) {
    return (0);
  } else {
  }
  rc = em28xx_gpio_set(dev, dev->board.tuner_gpio);
  return (rc);
}
}
__inline static void em28xx_set_model(struct em28xx *dev )
{
  {
  dev->board = em28xx_boards[dev->model];
  if ((unsigned int )dev->board.xclk == 0U) {
    dev->board.xclk = 39U;
  } else {
  }
  if ((unsigned int )dev->board.i2c_speed == 0U) {
    dev->board.i2c_speed = 64U;
  } else {
  }
  return;
}
}
static int em28xx_initialize_mt9m111(struct em28xx *dev )
{ int i ;
  unsigned char regs[4U][3U] ;
  {
  regs[0][0] = 13U;
  regs[0][1] = 0U;
  regs[0][2] = 1U;
  regs[1][0] = 13U;
  regs[1][1] = 0U;
  regs[1][2] = 0U;
  regs[2][0] = 10U;
  regs[2][1] = 0U;
  regs[2][2] = 33U;
  regs[3][0] = 33U;
  regs[3][1] = 4U;
  regs[3][2] = 0U;
  i = 0;
  goto ldv_45880;
  ldv_45879:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client), (char const *)(& regs) + (unsigned long )i,
                  3);
  i = i + 1;
  ldv_45880: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_45879;
  } else {
    goto ldv_45881;
  }
  ldv_45881: ;
  return (0);
}
}
static int em28xx_initialize_mt9m001(struct em28xx *dev )
{ int i ;
  unsigned char regs[13U][3U] ;
  {
  regs[0][0] = 13U;
  regs[0][1] = 0U;
  regs[0][2] = 1U;
  regs[1][0] = 13U;
  regs[1][1] = 0U;
  regs[1][2] = 0U;
  regs[2][0] = 4U;
  regs[2][1] = 5U;
  regs[2][2] = 0U;
  regs[3][0] = 3U;
  regs[3][1] = 4U;
  regs[3][2] = 0U;
  regs[4][0] = 32U;
  regs[4][1] = 17U;
  regs[4][2] = 0U;
  regs[5][0] = 6U;
  regs[5][1] = 0U;
  regs[5][2] = 16U;
  regs[6][0] = 43U;
  regs[6][1] = 0U;
  regs[6][2] = 36U;
  regs[7][0] = 46U;
  regs[7][1] = 0U;
  regs[7][2] = 36U;
  regs[8][0] = 53U;
  regs[8][1] = 0U;
  regs[8][2] = 36U;
  regs[9][0] = 45U;
  regs[9][1] = 0U;
  regs[9][2] = 32U;
  regs[10][0] = 44U;
  regs[10][1] = 0U;
  regs[10][2] = 32U;
  regs[11][0] = 9U;
  regs[11][1] = 10U;
  regs[11][2] = 212U;
  regs[12][0] = 53U;
  regs[12][1] = 0U;
  regs[12][2] = 87U;
  i = 0;
  goto ldv_45890;
  ldv_45889:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client), (char const *)(& regs) + (unsigned long )i,
                  3);
  i = i + 1;
  ldv_45890: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_45889;
  } else {
    goto ldv_45891;
  }
  ldv_45891: ;
  return (0);
}
}
static int em28xx_hint_sensor(struct em28xx *dev )
{ int rc ;
  char *sensor_name ;
  unsigned char cmd ;
  __be16 version_be ;
  u16 version ;
  __u16 tmp ;
  {
  dev->i2c_client.addr = 93U;
  cmd = 0U;
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client), (char const *)(& cmd),
                  1);
  rc = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client), (char *)(& version_be),
                       2);
  if (rc != 2) {
    return (-22);
  } else {
  }
  tmp = __fswab16((int )version_be);
  version = tmp;
  switch ((int )version) {
  case 33330: ;
  case 33347:
  dev->model = 71;
  em28xx_set_model(dev);
  sensor_name = (char *)"mt9v011";
  dev->em28xx_sensor = 1;
  dev->sensor_xres = 640;
  dev->sensor_yres = 480;
  dev->board.xclk = 6U;
  dev->sensor_xtal = 4300000;
  dev->vinmode = 13;
  dev->vinctl = 0;
  goto ldv_45902;
  case 5178:
  dev->model = 22;
  em28xx_set_model(dev);
  sensor_name = (char *)"mt9m111";
  dev->board.xclk = 10U;
  dev->em28xx_sensor = 3;
  em28xx_initialize_mt9m111(dev);
  dev->sensor_xres = 640;
  dev->sensor_yres = 512;
  dev->vinmode = 10;
  dev->vinctl = 0;
  goto ldv_45902;
  case 33841:
  dev->model = 22;
  em28xx_set_model(dev);
  sensor_name = (char *)"mt9m001";
  dev->em28xx_sensor = 2;
  em28xx_initialize_mt9m001(dev);
  dev->sensor_xres = 1280;
  dev->sensor_yres = 1024;
  dev->vinmode = 12;
  dev->vinctl = 0;
  goto ldv_45902;
  default:
  printk("Unknown Micron Sensor 0x%04x\n", (int )version);
  return (-22);
  }
  ldv_45902:
  em28xx_pre_card_setup(dev);
  printk("\v%s: Sensor is %s, using model %s entry.\n", (char *)(& dev->name), sensor_name,
         em28xx_boards[dev->model].name);
  return (0);
}
}
static void em28xx_pre_card_setup(struct em28xx *dev )
{ unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  unsigned long __ms___2 ;
  unsigned long tmp___2 ;
  unsigned long __ms___3 ;
  unsigned long tmp___3 ;
  unsigned long __ms___4 ;
  unsigned long tmp___4 ;
  unsigned long __ms___5 ;
  unsigned long tmp___5 ;
  unsigned long __ms___6 ;
  unsigned long tmp___6 ;
  unsigned long __ms___7 ;
  unsigned long tmp___7 ;
  unsigned long __ms___8 ;
  unsigned long tmp___8 ;
  {
  em28xx_write_reg(dev, 15, (int )dev->board.xclk & 127);
  if ((unsigned int )*((unsigned char *)dev + 464UL) == 0U) {
    em28xx_write_reg(dev, 6, (int )dev->board.i2c_speed);
  } else {
  }
  msleep(50U);
  switch (dev->model) {
  case 40:
  dev->i2s_speed = 2048000U;
  goto ldv_45910;
  case 39: ;
  case 47:
  em28xx_write_reg(dev, 8, 109);
  msleep(10U);
  em28xx_write_reg(dev, 8, 125);
  msleep(10U);
  goto ldv_45910;
  case 46:
  em28xx_write_reg(dev, 4, 0);
  msleep(10U);
  em28xx_write_reg(dev, 4, 1);
  msleep(10U);
  em28xx_write_reg(dev, 8, 253);
  __ms = 70UL;
  goto ldv_45916;
  ldv_45915:
  __const_udelay(4295000UL);
  ldv_45916:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_45915;
  } else {
    goto ldv_45917;
  }
  ldv_45917:
  em28xx_write_reg(dev, 8, 252);
  __ms___0 = 70UL;
  goto ldv_45920;
  ldv_45919:
  __const_udelay(4295000UL);
  ldv_45920:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_45919;
  } else {
    goto ldv_45921;
  }
  ldv_45921:
  em28xx_write_reg(dev, 8, 220);
  __ms___1 = 70UL;
  goto ldv_45924;
  ldv_45923:
  __const_udelay(4295000UL);
  ldv_45924:
  tmp___1 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_45923;
  } else {
    goto ldv_45925;
  }
  ldv_45925:
  em28xx_write_reg(dev, 8, 252);
  __ms___2 = 70UL;
  goto ldv_45928;
  ldv_45927:
  __const_udelay(4295000UL);
  ldv_45928:
  tmp___2 = __ms___2;
  __ms___2 = __ms___2 - 1UL;
  if (tmp___2 != 0UL) {
    goto ldv_45927;
  } else {
    goto ldv_45929;
  }
  ldv_45929: ;
  goto ldv_45910;
  case 44:
  em28xx_write_reg(dev, 8, 254);
  __ms___3 = 70UL;
  goto ldv_45933;
  ldv_45932:
  __const_udelay(4295000UL);
  ldv_45933:
  tmp___3 = __ms___3;
  __ms___3 = __ms___3 - 1UL;
  if (tmp___3 != 0UL) {
    goto ldv_45932;
  } else {
    goto ldv_45934;
  }
  ldv_45934:
  em28xx_write_reg(dev, 8, 222);
  __ms___4 = 70UL;
  goto ldv_45937;
  ldv_45936:
  __const_udelay(4295000UL);
  ldv_45937:
  tmp___4 = __ms___4;
  __ms___4 = __ms___4 - 1UL;
  if (tmp___4 != 0UL) {
    goto ldv_45936;
  } else {
    goto ldv_45938;
  }
  ldv_45938:
  em28xx_write_reg(dev, 8, 254);
  __ms___5 = 70UL;
  goto ldv_45941;
  ldv_45940:
  __const_udelay(4295000UL);
  ldv_45941:
  tmp___5 = __ms___5;
  __ms___5 = __ms___5 - 1UL;
  if (tmp___5 != 0UL) {
    goto ldv_45940;
  } else {
    goto ldv_45942;
  }
  ldv_45942: ;
  goto ldv_45910;
  case 45:
  em28xx_write_reg(dev, 8, 254);
  __ms___6 = 70UL;
  goto ldv_45946;
  ldv_45945:
  __const_udelay(4295000UL);
  ldv_45946:
  tmp___6 = __ms___6;
  __ms___6 = __ms___6 - 1UL;
  if (tmp___6 != 0UL) {
    goto ldv_45945;
  } else {
    goto ldv_45947;
  }
  ldv_45947:
  em28xx_write_reg(dev, 8, 222);
  __ms___7 = 70UL;
  goto ldv_45950;
  ldv_45949:
  __const_udelay(4295000UL);
  ldv_45950:
  tmp___7 = __ms___7;
  __ms___7 = __ms___7 - 1UL;
  if (tmp___7 != 0UL) {
    goto ldv_45949;
  } else {
    goto ldv_45951;
  }
  ldv_45951:
  em28xx_write_reg(dev, 8, 254);
  __ms___8 = 70UL;
  goto ldv_45954;
  ldv_45953:
  __const_udelay(4295000UL);
  ldv_45954:
  tmp___8 = __ms___8;
  __ms___8 = __ms___8 - 1UL;
  if (tmp___8 != 0UL) {
    goto ldv_45953;
  } else {
    goto ldv_45955;
  }
  ldv_45955: ;
  goto ldv_45910;
  case 25: ;
  case 5:
  em28xx_write_reg(dev, 8, 253);
  goto ldv_45910;
  case 69:
  em28xx_write_reg(dev, 8, 255);
  msleep(10U);
  em28xx_write_reg(dev, 8, 254);
  msleep(10U);
  em28xx_write_reg(dev, 4, 0);
  msleep(10U);
  em28xx_write_reg(dev, 4, 8);
  msleep(10U);
  goto ldv_45910;
  case 63:
  em28xx_write_regs(dev, 15, (char *)"\a", 1);
  em28xx_write_regs(dev, 6, (char *)"@", 1);
  em28xx_write_regs(dev, 13, (char *)"B", 1);
  em28xx_write_regs(dev, 8, (char *)"\375", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"\377", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"\177", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"k", 1);
  goto ldv_45910;
  case 64:
  em28xx_write_regs(dev, 8, (char *)"\370", 1);
  goto ldv_45910;
  case 65:
  em28xx_write_reg(dev, 8, 255);
  msleep(70U);
  em28xx_write_reg(dev, 8, 247);
  msleep(10U);
  em28xx_write_reg(dev, 8, 254);
  msleep(70U);
  em28xx_write_reg(dev, 8, 253);
  msleep(70U);
  goto ldv_45910;
  }
  ldv_45910:
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  em28xx_set_mode(dev, 0);
  return;
}
}
static void em28xx_setup_xc3028(struct em28xx *dev , struct xc2028_ctrl *ctl )
{
  {
  memset((void *)ctl, 0, 32UL);
  ctl->fname = (char *)"xc3028-v27.fw";
  ctl->max_len = 64;
  ctl->mts = em28xx_boards[dev->model].mts_firmware;
  switch (dev->model) {
  case 66: ;
  case 10: ;
  case 55:
  ctl->demod = 4560U;
  goto ldv_45969;
  case 11: ;
  case 51: ;
  case 53:
  ctl->demod = 4560U;
  goto ldv_45969;
  case 18: ;
  case 56:
  ctl->demod = 0U;
  goto ldv_45969;
  case 20:
  ctl->demod = 0U;
  ctl->fname = (char *)"xc3028L-v36.fw";
  goto ldv_45969;
  case 60: ;
  case 16: ;
  case 17:
  ctl->demod = 0U;
  goto ldv_45969;
  case 57: ;
  case 75: ;
  case 54:
  ctl->demod = 5200U;
  ctl->fname = (char *)"xc3028-v27.fw";
  goto ldv_45969;
  case 70:
  ctl->demod = 5200U;
  ctl->fname = (char *)"xc3028L-v36.fw";
  goto ldv_45969;
  default:
  ctl->demod = 5380U;
  }
  ldv_45969: ;
  return;
}
}
static void em28xx_tuner_setup(struct em28xx *dev )
{ struct tuner_setup tun_setup ;
  struct v4l2_frequency f ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_priv_tun_config tda9887_cfg ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct v4l2_priv_tun_config xc2028_cfg ;
  struct xc2028_ctrl ctl ;
  struct v4l2_subdev *__sd___2 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  struct v4l2_subdev *__sd___3 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  {
  if (dev->tuner_type == 4) {
    return;
  } else {
  }
  memset((void *)(& tun_setup), 0, 24UL);
  tun_setup.mode_mask = 6U;
  tun_setup.tuner_callback = & em28xx_tuner_callback;
  if ((unsigned int )dev->board.radio.type != 0U) {
    tun_setup.type = (unsigned int )dev->board.radio.type;
    tun_setup.addr = (unsigned short )dev->board.radio_addr;
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_45995;
    ldv_45994: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                    struct tuner_setup * ))0)) {
      (*(((__sd->ops)->tuner)->s_type_addr))(__sd, & tun_setup);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_45995: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_45994;
    } else {
      goto ldv_45996;
    }
    ldv_45996: ;
  } else {
  }
  if (dev->tuner_type != 4 && dev->tuner_type != 0) {
    tun_setup.type = (unsigned int )dev->tuner_type;
    tun_setup.addr = (unsigned short )dev->tuner_addr;
    __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    goto ldv_46003;
    ldv_46002: ;
    if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                            struct tuner_setup * ))0)) {
      (*(((__sd___0->ops)->tuner)->s_type_addr))(__sd___0, & tun_setup);
    } else {
    }
    __mptr___2 = (struct list_head const *)__sd___0->list.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
    ldv_46003: ;
    if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_46002;
    } else {
      goto ldv_46004;
    }
    ldv_46004: ;
  } else {
  }
  if (dev->tda9887_conf != 0) {
    tda9887_cfg.tuner = 74;
    tda9887_cfg.priv = (void *)(& dev->tda9887_conf);
    __mptr___3 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
    goto ldv_46012;
    ldv_46011: ;
    if ((unsigned long )(__sd___1->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___1->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                         struct v4l2_priv_tun_config const * ))0)) {
      (*(((__sd___1->ops)->tuner)->s_config))(__sd___1, (struct v4l2_priv_tun_config const *)(& tda9887_cfg));
    } else {
    }
    __mptr___4 = (struct list_head const *)__sd___1->list.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
    ldv_46012: ;
    if ((unsigned long )(& __sd___1->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_46011;
    } else {
      goto ldv_46013;
    }
    ldv_46013: ;
  } else {
  }
  if (dev->tuner_type == 71) {
    memset((void *)(& xc2028_cfg), 0, 16UL);
    memset((void *)(& ctl), 0, 32UL);
    em28xx_setup_xc3028(dev, & ctl);
    xc2028_cfg.tuner = 71;
    xc2028_cfg.priv = (void *)(& ctl);
    __mptr___5 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___5 + 0xffffffffffffff80UL;
    goto ldv_46022;
    ldv_46021: ;
    if ((unsigned long )(__sd___2->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___2->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                         struct v4l2_priv_tun_config const * ))0)) {
      (*(((__sd___2->ops)->tuner)->s_config))(__sd___2, (struct v4l2_priv_tun_config const *)(& xc2028_cfg));
    } else {
    }
    __mptr___6 = (struct list_head const *)__sd___2->list.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___6 + 0xffffffffffffff80UL;
    ldv_46022: ;
    if ((unsigned long )(& __sd___2->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_46021;
    } else {
      goto ldv_46023;
    }
    ldv_46023: ;
  } else {
  }
  f.tuner = 0U;
  f.type = 2U;
  f.frequency = 9076U;
  dev->ctl_freq = (int )f.frequency;
  __mptr___7 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___3 = (struct v4l2_subdev *)__mptr___7 + 0xffffffffffffff80UL;
  goto ldv_46030;
  ldv_46029: ;
  if ((unsigned long )(__sd___3->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___3->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          struct v4l2_frequency * ))0)) {
    (*(((__sd___3->ops)->tuner)->s_frequency))(__sd___3, & f);
  } else {
  }
  __mptr___8 = (struct list_head const *)__sd___3->list.next;
  __sd___3 = (struct v4l2_subdev *)__mptr___8 + 0xffffffffffffff80UL;
  ldv_46030: ;
  if ((unsigned long )(& __sd___3->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46029;
  } else {
    goto ldv_46031;
  }
  ldv_46031: ;
  return;
}
}
static int em28xx_hint_board(struct em28xx *dev )
{ int i ;
  {
  i = 0;
  goto ldv_46039;
  ldv_46038: ;
  if (dev->hash == em28xx_eeprom_hash[i].hash) {
    dev->model = (int )em28xx_eeprom_hash[i].model;
    dev->tuner_type = (int )em28xx_eeprom_hash[i].tuner;
    printk("\v%s: Your board has no unique USB ID.\n", (char *)(& dev->name));
    printk("\v%s: A hint were successfully done, based on eeprom hash.\n", (char *)(& dev->name));
    printk("\v%s: This method is not 100%% failproof.\n", (char *)(& dev->name));
    printk("\v%s: If the board were missdetected, please email this log to:\n", (char *)(& dev->name));
    printk("\v%s: \tV4L Mailing List  <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
    printk("\v%s: Board detected as %s\n", (char *)(& dev->name), em28xx_boards[dev->model].name);
    return (0);
  } else {
  }
  i = i + 1;
  ldv_46039: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_46038;
  } else {
    goto ldv_46040;
  }
  ldv_46040: ;
  if (dev->i2c_hash == 0UL) {
    em28xx_do_i2c_scan(dev);
  } else {
  }
  i = 0;
  goto ldv_46044;
  ldv_46043: ;
  if (dev->i2c_hash == em28xx_i2c_hash[i].hash) {
    dev->model = (int )em28xx_i2c_hash[i].model;
    dev->tuner_type = (int )em28xx_i2c_hash[i].tuner;
    printk("\v%s: Your board has no unique USB ID.\n", (char *)(& dev->name));
    printk("\v%s: A hint were successfully done, based on i2c devicelist hash.\n",
           (char *)(& dev->name));
    printk("\v%s: This method is not 100%% failproof.\n", (char *)(& dev->name));
    printk("\v%s: If the board were missdetected, please email this log to:\n", (char *)(& dev->name));
    printk("\v%s: \tV4L Mailing List  <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
    printk("\v%s: Board detected as %s\n", (char *)(& dev->name), em28xx_boards[dev->model].name);
    return (0);
  } else {
  }
  i = i + 1;
  ldv_46044: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_46043;
  } else {
    goto ldv_46045;
  }
  ldv_46045:
  printk("\v%s: Your board has no unique USB ID and thus need a hint to be detected.\n",
         (char *)(& dev->name));
  printk("\v%s: You may try to use card=<n> insmod option to workaround that.\n",
         (char *)(& dev->name));
  printk("\v%s: Please send an email with this log to:\n", (char *)(& dev->name));
  printk("\v%s: \tV4L Mailing List <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
  printk("\v%s: Board eeprom hash is 0x%08lx\n", (char *)(& dev->name), dev->hash);
  printk("\v%s: Board i2c devicelist hash is 0x%08lx\n", (char *)(& dev->name), dev->i2c_hash);
  printk("\v%s: Here is a list of valid choices for the card=<n> insmod option:\n",
         (char *)(& dev->name));
  i = 0;
  goto ldv_46047;
  ldv_46046:
  printk("\v%s:     card=%d -> %s\n", (char *)(& dev->name), i, em28xx_boards[i].name);
  i = i + 1;
  ldv_46047: ;
  if ((unsigned int )i < (unsigned int )em28xx_bcount) {
    goto ldv_46046;
  } else {
    goto ldv_46048;
  }
  ldv_46048: ;
  return (-1);
}
}
static void em28xx_card_setup(struct em28xx *dev )
{ int tmp ;
  int tmp___0 ;
  struct tveeprom tv ;
  int tmp___1 ;
  int tmp___2 ;
  struct mt9v011_platform_data pdata ;
  struct i2c_board_info mt9v011_info ;
  int has_demod ;
  unsigned short const *tmp___3 ;
  enum v4l2_i2c_tuner_type type ;
  int tmp___4 ;
  struct v4l2_subdev *sd ;
  unsigned short const *tmp___5 ;
  unsigned short tmp___6 ;
  {
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    tmp = em28xx_hint_sensor(dev);
    if (tmp < 0) {
      dev->board.is_webcam = 0U;
    } else {
      dev->progressive = 1;
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) == 0U) {
    switch (dev->model) {
    case 1: ;
    case 0:
    tmp___0 = em28xx_hint_board(dev);
    if (tmp___0 < 0) {
      printk("\v%s: Board not discovered\n", (char *)(& dev->name));
    } else {
      em28xx_set_model(dev);
      em28xx_pre_card_setup(dev);
    }
    goto ldv_46054;
    default:
    em28xx_set_model(dev);
    }
    ldv_46054: ;
  } else {
  }
  printk("\016%s: Identified as %s (card=%d)\n", (char *)(& dev->name), dev->board.name,
         dev->model);
  dev->tuner_type = em28xx_boards[dev->model].tuner_type;
  if (em28xx_boards[dev->model].tuner_addr != 0) {
    dev->tuner_addr = em28xx_boards[dev->model].tuner_addr;
  } else {
  }
  if (em28xx_boards[dev->model].tda9887_conf != 0U) {
    dev->tda9887_conf = (int )em28xx_boards[dev->model].tda9887_conf;
  } else {
  }
  switch (dev->model) {
  case 4: ;
  case 10: ;
  case 18: ;
  case 60: ;
  case 16:
  __request_module(1, "tveeprom");
  dev->i2c_client.addr = 80U;
  tveeprom_hauppauge_analog(& dev->i2c_client, & tv, (unsigned char *)(& dev->eedata));
  dev->tuner_type = (int )tv.tuner_type;
  if (tv.audio_processor == 34000U) {
    dev->i2s_speed = 2048000U;
    dev->board.has_msp34xx = 1U;
  } else {
  }
  goto ldv_46062;
  case 69:
  em28xx_write_reg(dev, 13, 66);
  msleep(10U);
  em28xx_write_reg(dev, 8, 253);
  msleep(10U);
  goto ldv_46062;
  case 12:
  em28xx_write_reg(dev, 8, 249);
  goto ldv_46062;
  case 1: ;
  case 0: ;
  case 49:
  tmp___1 = em28xx_hint_board(dev);
  if (tmp___1 == 0) {
    em28xx_set_model(dev);
  } else {
  }
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  goto ldv_46062;
  case 54:
  tmp___2 = em28xx_hint_board(dev);
  if (tmp___2 == 0) {
    em28xx_set_model(dev);
  } else {
  }
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  goto ldv_46062;
  }
  ldv_46062: ;
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    printk("\v%s: \n\n", (char *)(& dev->name));
    printk("\v%s: The support for this board weren\'t valid yet.\n", (char *)(& dev->name));
    printk("\v%s: Please send a report of having this working\n", (char *)(& dev->name));
    printk("\v%s: not to V4L mailing list (and/or to other addresses)\n\n", (char *)(& dev->name));
  } else {
  }
  if (tuner >= 0) {
    dev->tuner_type = tuner;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "msp3400", 0, (unsigned short const *)(& msp3400_addrs));
  } else {
  }
  if ((unsigned int )dev->board.decoder == 2U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "saa7115_auto", 0, (unsigned short const *)(& saa711x_addrs));
  } else {
  }
  if ((unsigned int )dev->board.decoder == 1U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tvp5150", 0, (unsigned short const *)(& tvp5150_addrs));
  } else {
  }
  if ((unsigned int )dev->em28xx_sensor == 1U) {
    mt9v011_info.type[0] = 'm';
    mt9v011_info.type[1] = 't';
    mt9v011_info.type[2] = '9';
    mt9v011_info.type[3] = 'v';
    mt9v011_info.type[4] = '0';
    mt9v011_info.type[5] = '1';
    mt9v011_info.type[6] = '1';
    mt9v011_info.type[7] = '\000';
    mt9v011_info.type[8] = (char)0;
    mt9v011_info.type[9] = (char)0;
    mt9v011_info.type[10] = (char)0;
    mt9v011_info.type[11] = (char)0;
    mt9v011_info.type[12] = (char)0;
    mt9v011_info.type[13] = (char)0;
    mt9v011_info.type[14] = (char)0;
    mt9v011_info.type[15] = (char)0;
    mt9v011_info.type[16] = (char)0;
    mt9v011_info.type[17] = (char)0;
    mt9v011_info.type[18] = (char)0;
    mt9v011_info.type[19] = (char)0;
    mt9v011_info.flags = (unsigned short)0;
    mt9v011_info.addr = 93U;
    mt9v011_info.platform_data = (void *)(& pdata);
    mt9v011_info.archdata = 0;
    mt9v011_info.of_node = 0;
    mt9v011_info.acpi_node.handle = 0;
    mt9v011_info.irq = 0;
    pdata.xtal = (unsigned int )dev->sensor_xtal;
    v4l2_i2c_new_subdev_board(& dev->v4l2_dev, & dev->i2c_adap, & mt9v011_info, 0);
  } else {
  }
  if ((unsigned int )dev->board.adecoder == 1U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tvaudio", (int )((u8 )dev->board.tvaudio_addr),
                        0);
  } else {
  }
  if (dev->board.tuner_type != 4) {
    has_demod = dev->tda9887_conf & 1;
    if ((unsigned int )dev->board.radio.type != 0U) {
      v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tuner", (int )dev->board.radio_addr,
                          0);
    } else {
    }
    if (has_demod != 0) {
      tmp___3 = v4l2_i2c_tuner_addrs(1);
      v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tuner", 0, tmp___3);
    } else {
    }
    if (dev->tuner_addr == 0) {
      if (has_demod != 0) {
        tmp___4 = 3;
      } else {
        tmp___4 = 2;
      }
      type = tmp___4;
      tmp___5 = v4l2_i2c_tuner_addrs(type);
      sd = v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tuner", 0, tmp___5);
      if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
        tmp___6 = v4l2_i2c_subdev_addr(sd);
        dev->tuner_addr = (int )tmp___6;
      } else {
      }
    } else {
      v4l2_i2c_new_subdev(& dev->v4l2_dev, & dev->i2c_adap, "tuner", (int )((u8 )dev->tuner_addr),
                          0);
    }
  } else {
  }
  em28xx_tuner_setup(dev);
  return;
}
}
static void request_module_async(struct work_struct *work )
{ struct em28xx *dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct em28xx *)__mptr + 0xfffffffffffff050UL;
  em28xx_init_extension(dev);
  if ((unsigned int )*((unsigned char *)dev + 636UL) != 0U) {
    __request_module(1, "snd-usb-audio");
  } else
  if ((unsigned int )*((unsigned char *)dev + 636UL) != 0U) {
    __request_module(1, "em28xx-alsa");
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    __request_module(1, "em28xx-dvb");
  } else {
  }
  if ((unsigned long )dev->board.ir_codes != (unsigned long )((char *)0) && disable_ir == 0U) {
    __request_module(1, "em28xx-rc");
  } else {
  }
  return;
}
}
static void request_modules(struct em28xx *dev )
{ struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  __init_work(& dev->request_module_wk, 0);
  __constr_expr_0.counter = 4195328L;
  dev->request_module_wk.data = __constr_expr_0;
  lockdep_init_map(& dev->request_module_wk.lockdep_map, "(&dev->request_module_wk)",
                   & __key, 0);
  INIT_LIST_HEAD(& dev->request_module_wk.entry);
  dev->request_module_wk.func = & request_module_async;
  schedule_work(& dev->request_module_wk);
  return;
}
}
static void flush_request_modules(struct em28xx *dev )
{
  {
  flush_work(& dev->request_module_wk);
  return;
}
}
void em28xx_release_resources(struct em28xx *dev )
{
  {
  em28xx_release_analog_resources(dev);
  em28xx_i2c_unregister(dev);
  v4l2_device_unregister(& dev->v4l2_dev);
  usb_put_dev(dev->udev);
  clear_bit(dev->devno, (unsigned long volatile *)(& em28xx_devused));
  return;
}
}
static int em28xx_init_dev(struct em28xx *dev , struct usb_device *udev , struct usb_interface *interface ,
                           int minor )
{ int retval ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev->udev = udev;
  __mutex_init(& dev->ctrl_urb_lock, "&dev->ctrl_urb_lock", & __key);
  spinlock_check(& dev->slock);
  __raw_spin_lock_init(& dev->slock.ldv_5961.rlock, "&(&dev->slock)->rlock", & __key___0);
  dev->em28xx_write_regs = & em28xx_write_regs;
  dev->em28xx_read_reg = & em28xx_read_reg;
  dev->em28xx_read_reg_req_len = & em28xx_read_reg_req_len;
  dev->em28xx_write_regs_req = & em28xx_write_regs_req;
  dev->em28xx_read_reg_req = & em28xx_read_reg_req;
  dev->board.is_em2800 = em28xx_boards[dev->model].is_em2800;
  em28xx_set_model(dev);
  dev->reg_gpo_num = 4U;
  dev->reg_gpio_num = 8U;
  dev->wait_after_write = 5U;
  retval = em28xx_read_reg(dev, 10);
  if (retval > 0) {
    dev->chip_id = (enum em28xx_chip_id )retval;
    switch ((unsigned int )dev->chip_id) {
    case 7:
    printk("\016%s: chip ID is em2800\n", (char *)(& dev->name));
    goto ldv_46101;
    case 17:
    printk("\016%s: chip ID is em2710\n", (char *)(& dev->name));
    goto ldv_46101;
    case 33:
    printk("\016%s: chip ID is em2750\n", (char *)(& dev->name));
    goto ldv_46101;
    case 18:
    printk("\016%s: chip ID is em2820 (or em2710)\n", (char *)(& dev->name));
    goto ldv_46101;
    case 20:
    printk("\016%s: chip ID is em2840\n", (char *)(& dev->name));
    goto ldv_46101;
    case 34:
    printk("\016%s: chip ID is em2860\n", (char *)(& dev->name));
    goto ldv_46101;
    case 35:
    printk("\016%s: chip ID is em2870\n", (char *)(& dev->name));
    dev->wait_after_write = 0U;
    goto ldv_46101;
    case 65:
    printk("\016%s: chip ID is em2874\n", (char *)(& dev->name));
    dev->reg_gpio_num = 128U;
    dev->wait_after_write = 0U;
    goto ldv_46101;
    case 113:
    printk("\016%s: chip ID is em28174\n", (char *)(& dev->name));
    dev->reg_gpio_num = 128U;
    dev->wait_after_write = 0U;
    goto ldv_46101;
    case 36:
    printk("\016%s: chip ID is em2882/em2883\n", (char *)(& dev->name));
    dev->wait_after_write = 0U;
    goto ldv_46101;
    case 68:
    printk("\016%s: chip ID is em2884\n", (char *)(& dev->name));
    dev->reg_gpio_num = 128U;
    dev->wait_after_write = 0U;
    goto ldv_46101;
    default:
    printk("\016%s: em28xx chip ID = %d\n", (char *)(& dev->name), (unsigned int )dev->chip_id);
    }
    ldv_46101: ;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 636UL) != 0U) {
    retval = em28xx_audio_setup(dev);
    if (retval != 0) {
      return (-19);
    } else {
    }
    em28xx_init_extension(dev);
    return (0);
  } else {
  }
  retval = em28xx_read_reg(dev, (int )dev->reg_gpo_num);
  if (retval >= 0) {
    dev->reg_gpo = (unsigned char )retval;
  } else {
  }
  em28xx_pre_card_setup(dev);
  if ((unsigned int )*((unsigned char *)dev + 464UL) == 0U) {
    retval = em28xx_write_reg(dev, 6, (int )dev->board.i2c_speed);
    if (retval < 0) {
      printk("\v%s: %s: em28xx_write_reg failed! retval [%d]\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      return (retval);
    } else {
    }
  } else {
  }
  retval = v4l2_device_register(& interface->dev, & dev->v4l2_dev);
  if (retval < 0) {
    printk("\v%s: Call to v4l2_device_register() failed!\n", (char *)(& dev->name));
    return (retval);
  } else {
  }
  retval = em28xx_i2c_register(dev);
  if (retval < 0) {
    printk("\v%s: %s: em28xx_i2c_register - error [%d]!\n", (char *)(& dev->name),
           "em28xx_init_dev", retval);
    goto unregister_dev;
  } else {
  }
  dev->vinmode = 16;
  dev->vinctl = 17;
  em28xx_card_setup(dev);
  retval = em28xx_audio_setup(dev);
  if (retval < 0) {
    printk("\v%s: %s: Error while setting audio - error [%d]!\n", (char *)(& dev->name),
           "em28xx_init_dev", retval);
    goto fail;
  } else {
  }
  em28xx_wake_i2c(dev);
  INIT_LIST_HEAD(& dev->vidq.active);
  INIT_LIST_HEAD(& dev->vbiq.active);
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    retval = em28xx_write_reg(dev, 8, 247);
    if (retval < 0) {
      printk("\v%s: %s: em28xx_write_reg - msp34xx(1) failed! error [%d]\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      goto fail;
    } else {
    }
    msleep(3U);
    retval = em28xx_write_reg(dev, 8, 255);
    if (retval < 0) {
      printk("\v%s: %s: em28xx_write_reg - msp34xx(2) failed! error [%d]\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      goto fail;
    } else {
    }
    msleep(3U);
  } else {
  }
  retval = em28xx_register_analog_devices(dev);
  if (retval < 0) {
    goto fail;
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46122;
  ldv_46121: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_power != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                           int ))0)) {
    (*(((__sd->ops)->core)->s_power))(__sd, 0);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46122: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_46121;
  } else {
    goto ldv_46123;
  }
  ldv_46123: ;
  return (0);
  fail:
  em28xx_i2c_unregister(dev);
  unregister_dev:
  v4l2_device_unregister(& dev->v4l2_dev);
  return (retval);
}
}
static int em28xx_usb_probe(struct usb_interface *interface , struct usb_device_id const *id )
{ struct usb_device *udev ;
  struct em28xx *dev ;
  int retval ;
  bool has_audio ;
  bool has_video ;
  bool has_dvb ;
  int i ;
  int nr ;
  int ifnum ;
  char *speed ;
  struct usb_device *tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int ep ;
  struct usb_endpoint_descriptor const *e ;
  int sizedescr ;
  int size ;
  int tmp___4 ;
  int tmp___5 ;
  char *tmp___6 ;
  char *tmp___7 ;
  struct usb_interface *uif ;
  struct lock_class_key __key ;
  {
  dev = 0;
  has_audio = 0;
  has_video = 0;
  has_dvb = 0;
  ifnum = (int const )(interface->altsetting)->desc.bInterfaceNumber;
  tmp = interface_to_usbdev(interface);
  udev = usb_get_dev(tmp);
  ldv_46139:
  tmp___0 = find_first_zero_bit((unsigned long const *)(& em28xx_devused), 4UL);
  nr = (int )tmp___0;
  if (nr > 3) {
    printk("em28xx: Supports only %i em28xx boards.\n", 4);
    retval = -12;
    goto err_no_slot;
  } else {
  }
  tmp___1 = test_and_set_bit(nr, (unsigned long volatile *)(& em28xx_devused));
  if (tmp___1 != 0) {
    goto ldv_46139;
  } else {
    goto ldv_46140;
  }
  ldv_46140: ;
  if ((unsigned int )(interface->altsetting)->desc.bInterfaceClass == 1U) {
    printk("\vem28xx audio device (%04x:%04x): interface %i, class %i\n", (int )udev->descriptor.idVendor,
           (int )udev->descriptor.idProduct, ifnum, (int )(interface->altsetting)->desc.bInterfaceClass);
    retval = -19;
    goto err;
  } else {
  }
  tmp___2 = kzalloc(5616UL, 208U);
  dev = (struct em28xx *)tmp___2;
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    printk("\vem28xx: out of memory!\n");
    retval = -12;
    goto err;
  } else {
  }
  tmp___3 = kmalloc((unsigned long )interface->num_altsetting * 4UL, 208U);
  dev->alt_max_pkt_size = (unsigned int *)tmp___3;
  if ((unsigned long )dev->alt_max_pkt_size == (unsigned long )((unsigned int *)0)) {
    printk("\v%s: out of memory!\n", (char *)(& dev->name));
    kfree((void const *)dev);
    retval = -12;
    goto err;
  } else {
  }
  i = 0;
  goto ldv_46154;
  ldv_46153:
  ep = 0;
  goto ldv_46151;
  ldv_46150:
  e = (struct usb_endpoint_descriptor const *)(& ((interface->altsetting + (unsigned long )i)->endpoint + (unsigned long )ep)->desc);
  sizedescr = (int )e->wMaxPacketSize;
  size = sizedescr & 2047;
  if ((unsigned int )udev->speed == 3U) {
    size = (((sizedescr >> 11) & 3) + 1) * size;
  } else {
  }
  tmp___4 = usb_endpoint_xfer_isoc(e);
  if (tmp___4 != 0) {
    tmp___5 = usb_endpoint_dir_in(e);
    if (tmp___5 != 0) {
      switch ((int )e->bEndpointAddress) {
      case 131:
      has_audio = 1;
      goto ldv_46147;
      case 130:
      has_video = 1;
      *(dev->alt_max_pkt_size + (unsigned long )i) = (unsigned int )size;
      goto ldv_46147;
      case 132:
      has_dvb = 1;
      if ((unsigned int )size > dev->dvb_max_pkt_size) {
        dev->dvb_max_pkt_size = (unsigned int )size;
        dev->dvb_alt = i;
      } else {
      }
      goto ldv_46147;
      }
      ldv_46147: ;
    } else {
    }
  } else {
  }
  ep = ep + 1;
  ldv_46151: ;
  if ((int )(interface->altsetting + (unsigned long )i)->desc.bNumEndpoints > ep) {
    goto ldv_46150;
  } else {
    goto ldv_46152;
  }
  ldv_46152:
  i = i + 1;
  ldv_46154: ;
  if ((unsigned int )i < interface->num_altsetting) {
    goto ldv_46153;
  } else {
    goto ldv_46155;
  }
  ldv_46155: ;
  if ((! has_audio && ! has_video) && ! has_dvb) {
    retval = -19;
    goto err_free;
  } else {
  }
  switch ((unsigned int )udev->speed) {
  case 1:
  speed = (char *)"1.5";
  goto ldv_46158;
  case 0: ;
  case 2:
  speed = (char *)"12";
  goto ldv_46158;
  case 3:
  speed = (char *)"480";
  goto ldv_46158;
  default:
  speed = (char *)"unknown";
  }
  ldv_46158: ;
  if ((unsigned long )udev->product != (unsigned long )((char *)0)) {
    tmp___6 = udev->product;
  } else {
    tmp___6 = (char *)"";
  }
  if ((unsigned long )udev->manufacturer != (unsigned long )((char *)0)) {
    tmp___7 = udev->manufacturer;
  } else {
    tmp___7 = (char *)"";
  }
  printk("\016em28xx: New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\n",
         tmp___7, tmp___6, speed, (int )udev->descriptor.idVendor, (int )udev->descriptor.idProduct,
         ifnum, (int )(interface->altsetting)->desc.bInterfaceNumber);
  if ((int )has_audio) {
    printk("\016em28xx: Audio Vendor Class interface %i found\n", ifnum);
  } else {
  }
  if ((int )has_video) {
    printk("\016em28xx: Video interface %i found\n", ifnum);
  } else {
  }
  if ((int )has_dvb) {
    printk("\016em28xx: DVB interface %i found\n", ifnum);
  } else {
  }
  if ((unsigned int )udev->speed != 3U && disable_usb_speed_check == 0U) {
    printk("em28xx: Device initialization failed.\n");
    printk("em28xx: Device must be connected to a high-speed USB 2.0 port.\n");
    retval = -19;
    goto err_free;
  } else {
  }
  snprintf((char *)(& dev->name), 30UL, "em28xx #%d", nr);
  dev->devno = nr;
  dev->model = (int )id->driver_info;
  dev->alt = -1;
  dev->is_audio_only = (unsigned char )((int )has_audio && (! has_video && ! has_dvb));
  dev->has_alsa_audio = (unsigned char )has_audio;
  dev->audio_ifnum = ifnum;
  i = 0;
  goto ldv_46166;
  ldv_46165:
  uif = (udev->config)->interface[i];
  if ((unsigned int )(uif->altsetting)->desc.bInterfaceClass == 1U) {
    dev->has_audio_class = 1U;
    goto ldv_46164;
  } else {
  }
  i = i + 1;
  ldv_46166: ;
  if ((int )(udev->config)->desc.bNumInterfaces > i) {
    goto ldv_46165;
  } else {
    goto ldv_46164;
  }
  ldv_46164:
  dev->num_alt = (int )interface->num_altsetting;
  if (card[nr] < (unsigned int )em28xx_bcount) {
    dev->model = (int )card[nr];
  } else {
  }
  usb_set_intfdata(interface, (void *)dev);
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  ldv_mutex_lock_70(& dev->lock);
  retval = em28xx_init_dev(dev, udev, interface, nr);
  if (retval != 0) {
    goto unlock_and_free;
  } else {
  }
  if ((int )has_dvb) {
    retval = em28xx_alloc_isoc(dev, 2, 64, 5, (int )dev->dvb_max_pkt_size);
    if (retval != 0) {
      goto unlock_and_free;
    } else {
    }
  } else {
  }
  request_modules(dev);
  ldv_mutex_unlock_71(& dev->lock);
  return (0);
  unlock_and_free:
  ldv_mutex_unlock_72(& dev->lock);
  err_free:
  kfree((void const *)dev->alt_max_pkt_size);
  kfree((void const *)dev);
  err:
  clear_bit(nr, (unsigned long volatile *)(& em28xx_devused));
  err_no_slot:
  usb_put_dev(udev);
  return (retval);
}
}
static void em28xx_usb_disconnect(struct usb_interface *interface )
{ struct em28xx *dev ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = usb_get_intfdata(interface);
  dev = (struct em28xx *)tmp;
  usb_set_intfdata(interface, 0);
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 636UL) != 0U) {
    ldv_mutex_lock_73(& dev->lock);
    em28xx_close_extension(dev);
    ldv_mutex_unlock_74(& dev->lock);
    return;
  } else {
  }
  printk("\016%s: disconnecting %s\n", (char *)(& dev->name), (char *)(& (dev->vdev)->name));
  flush_request_modules(dev);
  ldv_mutex_lock_75(& dev->lock);
  v4l2_device_disconnect(& dev->v4l2_dev);
  if (dev->users != 0) {
    tmp___0 = video_device_node_name(dev->vdev);
    printk("\f%s: device %s is open! Deregistration and memory deallocation are deferred on close.\n",
           (char *)(& dev->name), tmp___0);
    dev->state = (enum em28xx_dev_state )((unsigned int )dev->state | 4U);
    em28xx_uninit_isoc(dev, dev->mode);
    dev->state = (enum em28xx_dev_state )((unsigned int )dev->state | 2U);
  } else {
    dev->state = (enum em28xx_dev_state )((unsigned int )dev->state | 2U);
    em28xx_release_resources(dev);
  }
  em28xx_uninit_isoc(dev, 2);
  ldv_mutex_unlock_76(& dev->lock);
  em28xx_close_extension(dev);
  if (dev->users == 0) {
    kfree((void const *)dev->alt_max_pkt_size);
    kfree((void const *)dev);
  } else {
  }
  return;
}
}
static struct usb_driver em28xx_usb_driver =
     {"em28xx", & em28xx_usb_probe, & em28xx_usb_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& em28xx_id_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static int em28xx_usb_driver_init(void)
{ int tmp ;
  {
  tmp = ldv_usb_register_driver_77(& em28xx_usb_driver, & __this_module, "em28xx");
  return (tmp);
}
}
static void em28xx_usb_driver_exit(void)
{
  {
  ldv_usb_deregister_78(& em28xx_usb_driver);
  return;
}
}
int ldv_retval_em28xx_usb_probe ;
struct usb_device_id *ldvarg67 ;
struct usb_interface *em28xx_usb_driver_group1 ;
void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_em28xx_usb_driver_init ;
void ldv_main_exported_6(void) ;
int main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 0;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_46235:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_46216;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_46216;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_46216;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_46216;
  case 4: ;
  if (ldv_state_variable_8 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_8 == 2 && usb_counter == 0) {
      em28xx_usb_disconnect(em28xx_usb_driver_group1);
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_46222;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      ldv_retval_em28xx_usb_probe = em28xx_usb_probe(em28xx_usb_driver_group1, (struct usb_device_id const *)ldvarg67);
      if (ldv_retval_em28xx_usb_probe == 0) {
        ldv_state_variable_8 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_46222;
    default: ;
    goto ldv_46222;
    }
    ldv_46222: ;
  } else {
  }
  goto ldv_46216;
  case 5: ;
  if (ldv_state_variable_1 != 0) {
    ldv_main_exported_1();
  } else {
  }
  goto ldv_46216;
  case 6: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_46216;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      em28xx_usb_driver_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_46230;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_em28xx_usb_driver_init = em28xx_usb_driver_init();
      if (ldv_retval_em28xx_usb_driver_init != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_em28xx_usb_driver_init == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_state_variable_2 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_6 = 1;
      } else {
      }
    } else {
    }
    goto ldv_46230;
    default: ;
    goto ldv_46230;
    }
    ldv_46230: ;
  } else {
  }
  goto ldv_46216;
  case 8: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_46216;
  default: ;
  goto ldv_46216;
  }
  ldv_46216: ;
  goto ldv_46235;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_64(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_76(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_usb_register_driver_77(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{ ldv_func_ret_type___15 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  usb_counter = 0;
  return (ldv_func_res);
}
}
void ldv_usb_deregister_78(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_8 = 0;
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
__inline static unsigned long arch_local_save_flags(void)
{ unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (825), "i" (12UL));
    ldv_4725: ;
    goto ldv_4725;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
int ldv_mutex_trylock_100(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_ctrl_urb_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_lock_em28xx_devlist_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_em28xx_devlist_mutex(struct mutex *lock ) ;
__inline static struct thread_info *current_thread_info___0(void)
{ struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6325;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6325;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6325;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6325;
  default:
  __bad_percpu_size();
  }
  ldv_6325:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_5961.rlock);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern int usb_unlink_urb(struct urb * ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static int ac97_return_record_select(int a_out )
{
  {
  return ((a_out & 1792) >> 8);
}
}
int em28xx_write_reg_bits(struct em28xx *dev , u16 reg , u8 val , u8 bitmask ) ;
int em28xx_capture_start(struct em28xx *dev , int start ) ;
void em28xx_stop_urbs(struct em28xx *dev ) ;
int em28xx_register_extension(struct em28xx_ops *ops ) ;
void em28xx_unregister_extension(struct em28xx_ops *ops ) ;
static unsigned int core_debug ;
static unsigned int reg_debug ;
static int alt ;
static unsigned int disable_vbi ;
int em28xx_read_reg_req_len(struct em28xx *dev , u8 req , u16 reg , char *buf , int len )
{ int ret ;
  int pipe ;
  unsigned int tmp ;
  size_t __len ;
  void *__ret ;
  int byte ;
  {
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483776U);
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (-19);
  } else {
  }
  if (len > 80) {
    return (-22);
  } else {
  }
  if (reg_debug != 0U) {
    printk("\017(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x ", pipe,
           192, (int )req, 0, 0, (int )reg & 255, (int )reg >> 8, len & 255, len >> 8);
  } else {
  }
  ldv_mutex_lock_106(& dev->ctrl_urb_lock);
  ret = usb_control_msg(dev->udev, (unsigned int )pipe, (int )req, 192, 0, (int )reg,
                        (void *)(& dev->urb_buf), (int )((__u16 )len), 250);
  if (ret < 0) {
    if (reg_debug != 0U) {
      printk(" failed!\n");
    } else {
    }
    ldv_mutex_unlock_107(& dev->ctrl_urb_lock);
    return (ret);
  } else {
  }
  if (len != 0) {
    __len = (size_t )len;
    __ret = memcpy((void *)buf, (void const *)(& dev->urb_buf), __len);
  } else {
  }
  ldv_mutex_unlock_108(& dev->ctrl_urb_lock);
  if (reg_debug != 0U) {
    printk("<<<");
    byte = 0;
    goto ldv_47429;
    ldv_47428:
    printk(" %02x", (int )((unsigned char )*(buf + (unsigned long )byte)));
    byte = byte + 1;
    ldv_47429: ;
    if (byte < len) {
      goto ldv_47428;
    } else {
      goto ldv_47430;
    }
    ldv_47430:
    printk("\n");
  } else {
  }
  return (ret);
}
}
int em28xx_read_reg_req(struct em28xx *dev , u8 req , u16 reg )
{ int ret ;
  u8 val ;
  {
  ret = em28xx_read_reg_req_len(dev, (int )req, (int )reg, (char *)(& val), 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((int )val);
}
}
int em28xx_read_reg(struct em28xx *dev , u16 reg )
{ int tmp ;
  {
  tmp = em28xx_read_reg_req(dev, 0, (int )reg);
  return (tmp);
}
}
int em28xx_write_regs_req(struct em28xx *dev , u8 req , u16 reg , char *buf , int len )
{ int ret ;
  int pipe ;
  unsigned int tmp ;
  int byte ;
  size_t __len ;
  void *__ret ;
  {
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483648U);
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (-19);
  } else {
  }
  if (len <= 0 || len > 80) {
    return (-22);
  } else {
  }
  if (reg_debug != 0U) {
    printk("\017(pipe 0x%08x): OUT: %02x %02x %02x %02x %02x %02x %02x %02x >>>",
           pipe, 64, (int )req, 0, 0, (int )reg & 255, (int )reg >> 8, len & 255,
           len >> 8);
    byte = 0;
    goto ldv_47460;
    ldv_47459:
    printk(" %02x", (int )((unsigned char )*(buf + (unsigned long )byte)));
    byte = byte + 1;
    ldv_47460: ;
    if (byte < len) {
      goto ldv_47459;
    } else {
      goto ldv_47461;
    }
    ldv_47461:
    printk("\n");
  } else {
  }
  ldv_mutex_lock_109(& dev->ctrl_urb_lock);
  __len = (size_t )len;
  __ret = memcpy((void *)(& dev->urb_buf), (void const *)buf, __len);
  ret = usb_control_msg(dev->udev, (unsigned int )pipe, (int )req, 64, 0, (int )reg,
                        (void *)(& dev->urb_buf), (int )((__u16 )len), 250);
  ldv_mutex_unlock_110(& dev->ctrl_urb_lock);
  if (dev->wait_after_write != 0U) {
    msleep(dev->wait_after_write);
  } else {
  }
  return (ret);
}
}
int em28xx_write_regs(struct em28xx *dev , u16 reg , char *buf , int len )
{ int rc ;
  {
  rc = em28xx_write_regs_req(dev, 0, (int )reg, buf, len);
  if (rc >= 0) {
    if ((int )dev->reg_gpo_num == (int )reg) {
      dev->reg_gpo = (unsigned char )*buf;
    } else
    if ((int )dev->reg_gpio_num == (int )reg) {
      dev->reg_gpio = (unsigned char )*buf;
    } else {
    }
  } else {
  }
  return (rc);
}
}
int em28xx_write_reg(struct em28xx *dev , u16 reg , u8 val )
{ int tmp ;
  {
  tmp = em28xx_write_regs(dev, (int )reg, (char *)(& val), 1);
  return (tmp);
}
}
int em28xx_write_reg_bits(struct em28xx *dev , u16 reg , u8 val , u8 bitmask )
{ int oldval ;
  u8 newval ;
  int tmp ;
  {
  if ((int )dev->reg_gpo_num == (int )reg) {
    oldval = (int )dev->reg_gpo;
  } else
  if ((int )dev->reg_gpio_num == (int )reg) {
    oldval = (int )dev->reg_gpio;
  } else {
    oldval = em28xx_read_reg(dev, (int )reg);
  }
  if (oldval < 0) {
    return (oldval);
  } else {
  }
  newval = (u8 )(((int )((signed char )oldval) & ~ ((int )((signed char )bitmask))) | (int )((signed char )((int )val & (int )bitmask)));
  tmp = em28xx_write_regs(dev, (int )reg, (char *)(& newval), 1);
  return (tmp);
}
}
static int em28xx_is_ac97_ready(struct em28xx *dev )
{ int ret ;
  int i ;
  {
  i = 0;
  goto ldv_47517;
  ldv_47516:
  ret = em28xx_read_reg(dev, 67);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((ret & 1) == 0) {
    return (0);
  } else {
  }
  i = i + 1;
  msleep(5U);
  ldv_47517: ;
  if (i <= 9) {
    goto ldv_47516;
  } else {
    goto ldv_47518;
  }
  ldv_47518:
  printk("\f%s: AC97 command still being executed: not handled properly!\n", (char *)(& dev->name));
  return (-16);
}
}
int em28xx_read_ac97(struct em28xx *dev , u8 reg )
{ int ret ;
  u8 addr ;
  u16 val ;
  {
  addr = (unsigned int )reg | 128U;
  ret = em28xx_is_ac97_ready(dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_regs(dev, 66, (char *)(& addr), 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 0, 64, (char *)(& val), 2);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((int )val);
}
}
int em28xx_write_ac97(struct em28xx *dev , u8 reg , u16 val )
{ int ret ;
  u8 addr ;
  __le16 value ;
  {
  addr = (unsigned int )reg & 127U;
  value = val;
  ret = em28xx_is_ac97_ready(dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_regs(dev, 64, (char *)(& value), 2);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_regs(dev, 66, (char *)(& addr), 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static struct em28xx_vol_itable inputs[7U] = { {0, 20U},
        {1, 16U},
        {3, 12U},
        {4, 14U},
        {5, 18U},
        {6, 22U},
        {7, 24U}};
static int set_ac97_input(struct em28xx *dev )
{ int ret ;
  int i ;
  enum em28xx_amux amux ;
  {
  amux = dev->ctl_ainput;
  if ((unsigned int )amux == 2U) {
    amux = 0;
  } else {
  }
  i = 0;
  goto ldv_47562;
  ldv_47561: ;
  if ((unsigned int )inputs[i].mux == (unsigned int )amux) {
    ret = em28xx_write_ac97(dev, (int )inputs[i].reg, 2056);
  } else {
    ret = em28xx_write_ac97(dev, (int )inputs[i].reg, 32768);
  }
  if (ret < 0) {
    printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )inputs[i].reg);
  } else {
  }
  i = i + 1;
  ldv_47562: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_47561;
  } else {
    goto ldv_47563;
  }
  ldv_47563: ;
  return (0);
}
}
static int em28xx_set_audio_source(struct em28xx *dev )
{ int ret ;
  u8 input ;
  {
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    if (dev->ctl_ainput == 0U) {
      input = 13U;
    } else {
      input = 12U;
    }
    ret = em28xx_write_regs(dev, 8, (char *)(& input), 1);
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    input = 192U;
  } else {
    switch (dev->ctl_ainput) {
    case 0:
    input = 192U;
    goto ldv_47570;
    default:
    input = 128U;
    goto ldv_47570;
    }
    ldv_47570: ;
  }
  if ((unsigned long )dev->board.mute_gpio != (unsigned long )((struct em28xx_reg_seq *)0) && dev->mute != 0) {
    em28xx_gpio_set(dev, dev->board.mute_gpio);
  } else {
    em28xx_gpio_set(dev, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->gpio);
  }
  ret = em28xx_write_reg_bits(dev, 14, (int )input, 192);
  if (ret < 0) {
    return (ret);
  } else {
  }
  msleep(5U);
  switch ((unsigned int )dev->audio_mode.ac97) {
  case 0: ;
  goto ldv_47573;
  default:
  ret = set_ac97_input(dev);
  }
  ldv_47573: ;
  return (ret);
}
}
static struct em28xx_vol_otable const outputs[5U] = { {1, 2U},
        {2, 4U},
        {4, 6U},
        {8, 54U},
        {16, 56U}};
int em28xx_audio_analog_set(struct em28xx *dev )
{ int ret ;
  int i ;
  u8 xclk ;
  int vol ;
  int sel ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)dev + 784UL) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    i = 0;
    goto ldv_47588;
    ldv_47587:
    ret = em28xx_write_ac97(dev, (int )outputs[i].reg, 32768);
    if (ret < 0) {
      printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )outputs[i].reg);
    } else {
    }
    i = i + 1;
    ldv_47588: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_47587;
    } else {
      goto ldv_47589;
    }
    ldv_47589: ;
  } else {
  }
  xclk = (unsigned int )dev->board.xclk & 127U;
  if (dev->mute == 0) {
    xclk = (u8 )((unsigned int )xclk | 128U);
  } else {
  }
  ret = em28xx_write_reg(dev, 15, (int )xclk);
  if (ret < 0) {
    return (ret);
  } else {
  }
  msleep(10U);
  ret = em28xx_set_audio_source(dev);
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    em28xx_write_ac97(dev, 38, 16896);
    em28xx_write_ac97(dev, 42, 49);
    em28xx_write_ac97(dev, 50, 48000);
    vol = (31 - dev->volume) | ((31 - dev->volume) << 8);
    if (dev->mute != 0) {
      vol = vol | 32768;
    } else {
    }
    i = 0;
    goto ldv_47594;
    ldv_47593: ;
    if ((dev->ctl_aoutput & (unsigned int )outputs[i].mux) != 0U) {
      ret = em28xx_write_ac97(dev, (int )outputs[i].reg, (int )((u16 )vol));
    } else {
    }
    if (ret < 0) {
      printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )outputs[i].reg);
    } else {
    }
    i = i + 1;
    ldv_47594: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_47593;
    } else {
      goto ldv_47595;
    }
    ldv_47595: ;
    if ((dev->ctl_aoutput & 128U) != 0U) {
      tmp = ac97_return_record_select((int )dev->ctl_aoutput);
      sel = tmp;
      sel = (sel << 8) | sel;
      em28xx_write_ac97(dev, 26, (int )((u16 )sel));
    } else {
    }
  } else {
  }
  return (ret);
}
}
int em28xx_audio_setup(struct em28xx *dev )
{ int vid1 ;
  int vid2 ;
  int feat ;
  int cfg ;
  u32 vid ;
  int tmp ;
  {
  if (((unsigned int )dev->chip_id == 35U || (unsigned int )dev->chip_id == 65U) || (unsigned int )dev->chip_id == 113U) {
    dev->audio_mode.has_audio = 0U;
    dev->has_audio_class = 0U;
    dev->has_alsa_audio = 0U;
    return (0);
  } else {
  }
  dev->audio_mode.has_audio = 1U;
  cfg = em28xx_read_reg(dev, 0);
  printk("\016%s: Config register raw data: 0x%02x\n", (char *)(& dev->name), cfg);
  if (cfg < 0) {
    cfg = 16;
  } else
  if ((cfg & 48) == 0) {
    dev->has_alsa_audio = 0U;
    dev->audio_mode.has_audio = 0U;
    return (0);
  } else
  if ((cfg & 48) == 32) {
    printk("\016%s: I2S Audio (3 sample rates)\n", (char *)(& dev->name));
    dev->audio_mode.i2s_3rates = 1U;
  } else
  if ((cfg & 48) == 48) {
    printk("\016%s: I2S Audio (5 sample rates)\n", (char *)(& dev->name));
    dev->audio_mode.i2s_5rates = 1U;
  } else {
  }
  if ((cfg & 48) != 16) {
    dev->audio_mode.ac97 = 0;
    goto init_audio;
  } else {
  }
  dev->audio_mode.ac97 = 3;
  vid1 = em28xx_read_ac97(dev, 124);
  if (vid1 < 0) {
    printk("\f%s: AC97 chip type couldn\'t be determined\n", (char *)(& dev->name));
    dev->audio_mode.ac97 = 0;
    dev->has_alsa_audio = 0U;
    dev->audio_mode.has_audio = 0U;
    goto init_audio;
  } else {
  }
  vid2 = em28xx_read_ac97(dev, 126);
  if (vid2 < 0) {
    goto init_audio;
  } else {
  }
  vid = (u32 )((vid1 << 16) | vid2);
  dev->audio_mode.ac97_vendor_id = vid;
  printk("\f%s: AC97 vendor ID = 0x%08x\n", (char *)(& dev->name), vid);
  feat = em28xx_read_ac97(dev, 0);
  if (feat < 0) {
    goto init_audio;
  } else {
  }
  dev->audio_mode.ac97_feat = (u16 )feat;
  printk("\f%s: AC97 features = 0x%04x\n", (char *)(& dev->name), feat);
  if ((vid == 4294967295U || vid == 2206496336U) && feat == 27280) {
    dev->audio_mode.ac97 = 1;
  } else
  if (vid >> 8 == 8619126U) {
    dev->audio_mode.ac97 = 2;
  } else {
  }
  init_audio: ;
  switch ((unsigned int )dev->audio_mode.ac97) {
  case 0:
  printk("\016%s: No AC97 audio processor\n", (char *)(& dev->name));
  goto ldv_47613;
  case 1:
  printk("\016%s: Empia 202 AC97 audio processor detected\n", (char *)(& dev->name));
  goto ldv_47613;
  case 2:
  printk("\016%s: Sigmatel audio processor detected(stac 97%02x)\n", (char *)(& dev->name),
         dev->audio_mode.ac97_vendor_id & 255U);
  goto ldv_47613;
  case 3:
  printk("\f%s: Unknown AC97 audio processor detected!\n", (char *)(& dev->name));
  goto ldv_47613;
  default: ;
  goto ldv_47613;
  }
  ldv_47613:
  tmp = em28xx_audio_analog_set(dev);
  return (tmp);
}
}
int em28xx_colorlevels_set_default(struct em28xx *dev )
{ int tmp ;
  {
  em28xx_write_reg(dev, 32, 16);
  em28xx_write_reg(dev, 33, 0);
  em28xx_write_reg(dev, 34, 16);
  em28xx_write_reg(dev, 35, 0);
  em28xx_write_reg(dev, 36, 0);
  em28xx_write_reg(dev, 37, 0);
  em28xx_write_reg(dev, 20, 32);
  em28xx_write_reg(dev, 21, 32);
  em28xx_write_reg(dev, 22, 32);
  em28xx_write_reg(dev, 23, 32);
  em28xx_write_reg(dev, 24, 0);
  em28xx_write_reg(dev, 25, 0);
  tmp = em28xx_write_reg(dev, 26, 0);
  return (tmp);
}
}
int em28xx_capture_start(struct em28xx *dev , int start )
{ int rc ;
  int tmp ;
  {
  if (((unsigned int )dev->chip_id == 65U || (unsigned int )dev->chip_id == 68U) || (unsigned int )dev->chip_id == 113U) {
    if (start == 0) {
      rc = em28xx_write_reg_bits(dev, 95, 0, 1);
      return (rc);
    } else {
    }
    rc = em28xx_write_reg_bits(dev, 95, 1, 1);
    return (rc);
  } else {
  }
  if (start != 0) {
    tmp = 16;
  } else {
    tmp = 0;
  }
  rc = em28xx_write_reg_bits(dev, 12, tmp, 16);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (start == 0) {
    rc = em28xx_write_reg(dev, 18, 39);
    return (rc);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    rc = em28xx_write_reg(dev, 19, 12);
  } else {
  }
  rc = em28xx_write_reg(dev, 72, 0);
  if ((unsigned int )dev->mode == 1U) {
    rc = em28xx_write_reg(dev, 18, 103);
  } else {
    rc = em28xx_write_reg(dev, 18, 55);
  }
  msleep(6U);
  return (rc);
}
}
int em28xx_vbi_supported(struct em28xx *dev )
{
  {
  if (disable_vbi == 1U) {
    return (0);
  } else {
  }
  if ((unsigned int )dev->chip_id == 34U || (unsigned int )dev->chip_id == 36U) {
    return (1);
  } else {
  }
  return (0);
}
}
int em28xx_set_outfmt(struct em28xx *dev )
{ int ret ;
  u8 vinctrl ;
  int tmp ;
  int tmp___0 ;
  {
  ret = em28xx_write_reg_bits(dev, 39, (int )((u8 )((int )((signed char )(dev->format)->reg) | 32)),
                              255);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_reg(dev, 16, (int )((u8 )dev->vinmode));
  if (ret < 0) {
    return (ret);
  } else {
  }
  vinctrl = (u8 )dev->vinctl;
  tmp = em28xx_vbi_supported(dev);
  if (tmp == 1) {
    vinctrl = (u8 )((unsigned int )vinctrl | 64U);
    em28xx_write_reg(dev, 52, 0);
    em28xx_write_reg(dev, 54, (int )((u8 )(dev->vbi_width / 4U)));
    em28xx_write_reg(dev, 55, (int )((u8 )dev->vbi_height));
    if ((dev->norm & 63744ULL) != 0ULL) {
      em28xx_write_reg(dev, 53, 9);
    } else
    if ((dev->norm & 16713471ULL) != 0ULL) {
      em28xx_write_reg(dev, 53, 7);
    } else {
    }
  } else {
  }
  tmp___0 = em28xx_write_reg(dev, 17, (int )vinctrl);
  return (tmp___0);
}
}
static int em28xx_accumulator_set(struct em28xx *dev , u8 xmin , u8 xmax , u8 ymin ,
                                  u8 ymax )
{ int tmp ;
  {
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx Scale: (%d,%d)-(%d,%d)\n", (char *)(& dev->name), "em28xx_accumulator_set",
           (int )xmin, (int )ymin, (int )xmax, (int )ymax);
  } else {
  }
  em28xx_write_regs(dev, 40, (char *)(& xmin), 1);
  em28xx_write_regs(dev, 41, (char *)(& xmax), 1);
  em28xx_write_regs(dev, 42, (char *)(& ymin), 1);
  tmp = em28xx_write_regs(dev, 43, (char *)(& ymax), 1);
  return (tmp);
}
}
static int em28xx_capture_area_set(struct em28xx *dev , u8 hstart , u8 vstart , u16 width ,
                                   u16 height )
{ u8 cwidth ;
  u8 cheight ;
  u8 overflow ;
  int tmp ;
  {
  cwidth = (u8 )width;
  cheight = (u8 )height;
  overflow = (u8 )(((int )((signed char )((int )height >> 7)) & 2) | ((int )((signed char )((int )width >> 8)) & 1));
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx Area Set: (%d,%d)\n", (char *)(& dev->name), "em28xx_capture_area_set",
           (int )width | (((int )overflow & 2) << 7), (int )height | (((int )overflow & 1) << 8));
  } else {
  }
  em28xx_write_regs(dev, 28, (char *)(& hstart), 1);
  em28xx_write_regs(dev, 29, (char *)(& vstart), 1);
  em28xx_write_regs(dev, 30, (char *)(& cwidth), 1);
  em28xx_write_regs(dev, 31, (char *)(& cheight), 1);
  tmp = em28xx_write_regs(dev, 27, (char *)(& overflow), 1);
  return (tmp);
}
}
static int em28xx_scaler_set(struct em28xx *dev , u16 h , u16 v )
{ u8 mode ;
  int tmp ;
  int tmp___0 ;
  u8 buf[2U] ;
  int tmp___1 ;
  {
  if ((unsigned int )*((unsigned char *)dev + 464UL) != 0U) {
    if ((unsigned int )v != 0U) {
      tmp = 32;
    } else {
      tmp = 0;
    }
    if ((unsigned int )h != 0U) {
      tmp___0 = 16;
    } else {
      tmp___0 = 0;
    }
    mode = (u8 )(tmp | tmp___0);
  } else {
    buf[0] = (u8 )h;
    buf[1] = (u8 )((int )h >> 8);
    em28xx_write_regs(dev, 48, (char *)(& buf), 2);
    buf[0] = (u8 )v;
    buf[1] = (u8 )((int )v >> 8);
    em28xx_write_regs(dev, 50, (char *)(& buf), 2);
    if ((unsigned int )h != 0U || (unsigned int )v != 0U) {
      mode = 48U;
    } else {
      mode = 0U;
    }
  }
  tmp___1 = em28xx_write_reg_bits(dev, 38, (int )mode, 48);
  return (tmp___1);
}
}
int em28xx_resolution_set(struct em28xx *dev )
{ int width ;
  int height ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = norm_maxw(dev);
  width = (int )tmp;
  tmp___0 = norm_maxh(dev);
  height = (int )tmp___0;
  dev->vbi_width = 720U;
  if ((dev->norm & 63744ULL) != 0ULL) {
    dev->vbi_height = 12U;
  } else {
    dev->vbi_height = 18U;
  }
  em28xx_set_outfmt(dev);
  em28xx_accumulator_set(dev, 1, (int )((u8 )((width + -4) >> 2)), 1, (int )((u8 )((height + -4) >> 2)));
  tmp___1 = em28xx_vbi_supported(dev);
  if (tmp___1 == 1) {
    em28xx_capture_area_set(dev, 0, 2, (int )((u16 )(width >> 2)), (int )((u16 )(height >> 2)));
  } else {
    em28xx_capture_area_set(dev, 0, 0, (int )((u16 )(width >> 2)), (int )((u16 )(height >> 2)));
  }
  tmp___2 = em28xx_scaler_set(dev, (int )((u16 )dev->hscale), (int )((u16 )dev->vscale));
  return (tmp___2);
}
}
int em28xx_set_alternate(struct em28xx *dev )
{ int errCode ;
  int prev_alt ;
  int i ;
  unsigned int min_pkt_size ;
  {
  prev_alt = dev->alt;
  min_pkt_size = (unsigned int )((dev->width + 2) * 2);
  if (alt != 0 && dev->num_alt > alt) {
    if (core_debug != 0U) {
      printk("\016%s %s :alternate forced to %d\n", (char *)(& dev->name), "em28xx_set_alternate",
             dev->alt);
    } else {
    }
    dev->alt = alt;
    goto set_alt;
  } else {
  }
  if ((dev->width * 2) * dev->height > 345600) {
    min_pkt_size = min_pkt_size * 2U;
  } else {
  }
  i = 0;
  goto ldv_47682;
  ldv_47681: ;
  if (*(dev->alt_max_pkt_size + (unsigned long )i) >= min_pkt_size) {
    dev->alt = i;
    goto ldv_47680;
  } else
  if (*(dev->alt_max_pkt_size + (unsigned long )i) > *(dev->alt_max_pkt_size + (unsigned long )dev->alt)) {
    dev->alt = i;
  } else {
  }
  i = i + 1;
  ldv_47682: ;
  if (dev->num_alt > i) {
    goto ldv_47681;
  } else {
    goto ldv_47680;
  }
  ldv_47680: ;
  set_alt: ;
  if (dev->alt != prev_alt) {
    if (core_debug != 0U) {
      printk("\016%s %s :minimum isoc packet size: %u (alt=%d)\n", (char *)(& dev->name),
             "em28xx_set_alternate", min_pkt_size, dev->alt);
    } else {
    }
    dev->max_pkt_size = (int )*(dev->alt_max_pkt_size + (unsigned long )dev->alt);
    if (core_debug != 0U) {
      printk("\016%s %s :setting alternate %d with wMaxPacketSize=%u\n", (char *)(& dev->name),
             "em28xx_set_alternate", dev->alt, dev->max_pkt_size);
    } else {
    }
    errCode = usb_set_interface(dev->udev, 0, dev->alt);
    if (errCode < 0) {
      printk("\v%s: cannot change alternate number to %d (error=%i)\n", (char *)(& dev->name),
             dev->alt, errCode);
      return (errCode);
    } else {
    }
  } else {
  }
  return (0);
}
}
int em28xx_gpio_set(struct em28xx *dev , struct em28xx_reg_seq *gpio )
{ int rc ;
  {
  rc = 0;
  if ((unsigned long )gpio == (unsigned long )((struct em28xx_reg_seq *)0)) {
    return (rc);
  } else {
  }
  if ((unsigned int )dev->mode != 0U) {
    em28xx_write_reg(dev, 72, 0);
    if ((unsigned int )dev->mode == 1U) {
      em28xx_write_reg(dev, 18, 103);
    } else {
      em28xx_write_reg(dev, 18, 55);
    }
    msleep(6U);
  } else {
  }
  goto ldv_47689;
  ldv_47688: ;
  if (gpio->reg >= 0) {
    rc = em28xx_write_reg_bits(dev, (int )((u16 )gpio->reg), (int )gpio->val, (int )gpio->mask);
    if (rc < 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if (gpio->sleep > 0) {
    msleep((unsigned int )gpio->sleep);
  } else {
  }
  gpio = gpio + 1;
  ldv_47689: ;
  if (gpio->sleep >= 0) {
    goto ldv_47688;
  } else {
    goto ldv_47690;
  }
  ldv_47690: ;
  return (rc);
}
}
int em28xx_set_mode(struct em28xx *dev , enum em28xx_mode set_mode )
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )dev->mode == (unsigned int )set_mode) {
    return (0);
  } else {
  }
  if ((unsigned int )set_mode == 0U) {
    dev->mode = set_mode;
    tmp = em28xx_gpio_set(dev, dev->board.suspend_gpio);
    return (tmp);
  } else {
  }
  dev->mode = set_mode;
  if ((unsigned int )dev->mode == 2U) {
    tmp___0 = em28xx_gpio_set(dev, dev->board.dvb_gpio);
    return (tmp___0);
  } else {
    tmp___1 = em28xx_gpio_set(dev, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->gpio);
    return (tmp___1);
  }
}
}
static void em28xx_irq_callback(struct urb *urb )
{ struct em28xx *dev ;
  int i ;
  {
  dev = (struct em28xx *)urb->context;
  switch (urb->status) {
  case 0: ;
  case -110: ;
  goto ldv_47716;
  case -104: ;
  case -2: ;
  case -108: ;
  return;
  default: ;
  if (core_debug != 0U) {
    printk("\016%s %s :urb completition error %d.\n", (char *)(& dev->name), "em28xx_irq_callback",
           urb->status);
  } else {
  }
  goto ldv_47716;
  }
  ldv_47716:
  spin_lock(& dev->slock);
  (*(dev->isoc_ctl.isoc_copy))(dev, urb);
  spin_unlock(& dev->slock);
  i = 0;
  goto ldv_47723;
  ldv_47722:
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0U;
  i = i + 1;
  ldv_47723: ;
  if (urb->number_of_packets > i) {
    goto ldv_47722;
  } else {
    goto ldv_47724;
  }
  ldv_47724:
  urb->status = 0;
  urb->status = usb_submit_urb(urb, 32U);
  if (urb->status != 0) {
    if (core_debug != 0U) {
      printk("\016%s %s :urb resubmit failed (error=%i)\n", (char *)(& dev->name),
             "em28xx_irq_callback", urb->status);
    } else {
    }
  } else {
  }
  return;
}
}
void em28xx_uninit_isoc(struct em28xx *dev , enum em28xx_mode mode )
{ struct urb *urb ;
  struct em28xx_usb_isoc_bufs *isoc_bufs ;
  int i ;
  unsigned long _flags ;
  int tmp ;
  {
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_uninit_isoc in mode %d\n", (char *)(& dev->name),
           "em28xx_uninit_isoc", (unsigned int )mode);
  } else {
  }
  if ((unsigned int )mode == 2U) {
    isoc_bufs = & dev->isoc_ctl.digital_bufs;
  } else {
    isoc_bufs = & dev->isoc_ctl.analog_bufs;
  }
  i = 0;
  goto ldv_47743;
  ldv_47742:
  urb = *(isoc_bufs->urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    if (tmp == 0) {
      usb_kill_urb(urb);
    } else {
      usb_unlink_urb(urb);
    }
    if ((unsigned long )*(isoc_bufs->transfer_buffer + (unsigned long )i) != (unsigned long )((char *)0)) {
      usb_free_coherent(dev->udev, (size_t )urb->transfer_buffer_length, (void *)*(isoc_bufs->transfer_buffer + (unsigned long )i),
                        urb->transfer_dma);
    } else {
    }
    usb_free_urb(urb);
    *(isoc_bufs->urb + (unsigned long )i) = 0;
  } else {
  }
  *(isoc_bufs->transfer_buffer + (unsigned long )i) = 0;
  i = i + 1;
  ldv_47743: ;
  if (isoc_bufs->num_bufs > i) {
    goto ldv_47742;
  } else {
    goto ldv_47744;
  }
  ldv_47744:
  kfree((void const *)isoc_bufs->urb);
  kfree((void const *)isoc_bufs->transfer_buffer);
  isoc_bufs->urb = 0;
  isoc_bufs->transfer_buffer = 0;
  isoc_bufs->num_bufs = 0;
  em28xx_capture_start(dev, 0);
  return;
}
}
void em28xx_stop_urbs(struct em28xx *dev )
{ int i ;
  struct urb *urb ;
  struct em28xx_usb_isoc_bufs *isoc_bufs ;
  unsigned long _flags ;
  int tmp ;
  {
  isoc_bufs = & dev->isoc_ctl.digital_bufs;
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_stop_urbs\n", (char *)(& dev->name),
           "em28xx_stop_urbs");
  } else {
  }
  i = 0;
  goto ldv_47769;
  ldv_47768:
  urb = *(isoc_bufs->urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    if (tmp == 0) {
      usb_kill_urb(urb);
    } else {
      usb_unlink_urb(urb);
    }
  } else {
  }
  i = i + 1;
  ldv_47769: ;
  if (isoc_bufs->num_bufs > i) {
    goto ldv_47768;
  } else {
    goto ldv_47770;
  }
  ldv_47770:
  em28xx_capture_start(dev, 0);
  return;
}
}
int em28xx_alloc_isoc(struct em28xx *dev , enum em28xx_mode mode , int max_packets ,
                      int num_bufs , int max_pkt_size )
{ struct em28xx_usb_isoc_bufs *isoc_bufs ;
  int i ;
  int sb_size ;
  int pipe ;
  struct urb *urb ;
  int j ;
  int k ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char *tmp___3 ;
  struct thread_info *tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  {
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_alloc_isoc in mode %d\n", (char *)(& dev->name),
           "em28xx_alloc_isoc", (unsigned int )mode);
  } else {
  }
  if ((unsigned int )mode == 2U) {
    isoc_bufs = & dev->isoc_ctl.digital_bufs;
  } else {
    isoc_bufs = & dev->isoc_ctl.analog_bufs;
  }
  em28xx_uninit_isoc(dev, mode);
  isoc_bufs->num_bufs = num_bufs;
  tmp = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  isoc_bufs->urb = (struct urb **)tmp;
  if ((unsigned long )isoc_bufs->urb == (unsigned long )((struct urb **)0)) {
    printk("\v%s: cannot alloc memory for usb buffers\n", (char *)(& dev->name));
    return (-12);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  isoc_bufs->transfer_buffer = (char **)tmp___0;
  if ((unsigned long )isoc_bufs->transfer_buffer == (unsigned long )((char **)0)) {
    printk("\v%s: cannot allocate memory for usb transfer\n", (char *)(& dev->name));
    kfree((void const *)isoc_bufs->urb);
    return (-12);
  } else {
  }
  isoc_bufs->max_pkt_size = max_pkt_size;
  isoc_bufs->num_packets = max_packets;
  dev->isoc_ctl.vid_buf = 0;
  dev->isoc_ctl.vbi_buf = 0;
  sb_size = isoc_bufs->num_packets * isoc_bufs->max_pkt_size;
  i = 0;
  goto ldv_47796;
  ldv_47795:
  urb = usb_alloc_urb(isoc_bufs->num_packets, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    printk("\vcannot alloc isoc_ctl.urb %i\n", i);
    em28xx_uninit_isoc(dev, mode);
    return (-12);
  } else {
  }
  *(isoc_bufs->urb + (unsigned long )i) = urb;
  tmp___1 = usb_alloc_coherent(dev->udev, (size_t )sb_size, 208U, & urb->transfer_dma);
  *(isoc_bufs->transfer_buffer + (unsigned long )i) = (char *)tmp___1;
  if ((unsigned long )*(isoc_bufs->transfer_buffer + (unsigned long )i) == (unsigned long )((char *)0)) {
    tmp___4 = current_thread_info___0();
    if (((unsigned long )tmp___4->preempt_count & 134217472UL) != 0UL) {
      tmp___3 = (char *)" while in int";
    } else {
      tmp___3 = (char *)"";
    }
    printk("\vunable to allocate %i bytes for transfer buffer %i%s\n", sb_size, i,
           tmp___3);
    em28xx_uninit_isoc(dev, mode);
    return (-12);
  } else {
  }
  memset((void *)*(isoc_bufs->transfer_buffer + (unsigned long )i), 0, (size_t )sb_size);
  if ((unsigned int )mode == 1U) {
    tmp___5 = 130U;
  } else {
    tmp___5 = 132U;
  }
  tmp___6 = __create_pipe(dev->udev, tmp___5);
  pipe = (int )(tmp___6 | 128U);
  usb_fill_int_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(isoc_bufs->transfer_buffer + (unsigned long )i),
                   sb_size, & em28xx_irq_callback, (void *)dev, 1);
  urb->number_of_packets = isoc_bufs->num_packets;
  urb->transfer_flags = 6U;
  k = 0;
  j = 0;
  goto ldv_47793;
  ldv_47792:
  urb->iso_frame_desc[j].offset = (unsigned int )k;
  urb->iso_frame_desc[j].length = (unsigned int )isoc_bufs->max_pkt_size;
  k = isoc_bufs->max_pkt_size + k;
  j = j + 1;
  ldv_47793: ;
  if (isoc_bufs->num_packets > j) {
    goto ldv_47792;
  } else {
    goto ldv_47794;
  }
  ldv_47794:
  i = i + 1;
  ldv_47796: ;
  if (isoc_bufs->num_bufs > i) {
    goto ldv_47795;
  } else {
    goto ldv_47797;
  }
  ldv_47797: ;
  return (0);
}
}
int em28xx_init_isoc(struct em28xx *dev , enum em28xx_mode mode , int max_packets ,
                     int num_bufs , int max_pkt_size , int (*isoc_copy)(struct em28xx * ,
                                                                        struct urb * ) )
{ struct em28xx_dmaqueue *dma_q ;
  struct em28xx_dmaqueue *vbi_dma_q ;
  struct em28xx_usb_isoc_bufs *isoc_bufs ;
  int i ;
  int rc ;
  int alloc ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  dma_q = & dev->vidq;
  vbi_dma_q = & dev->vbiq;
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_init_isoc in mode %d\n", (char *)(& dev->name),
           "em28xx_init_isoc", (unsigned int )mode);
  } else {
  }
  dev->isoc_ctl.isoc_copy = isoc_copy;
  if ((unsigned int )mode == 2U) {
    isoc_bufs = & dev->isoc_ctl.digital_bufs;
    alloc = 0;
  } else {
    isoc_bufs = & dev->isoc_ctl.analog_bufs;
    alloc = 1;
  }
  if (alloc != 0) {
    rc = em28xx_alloc_isoc(dev, mode, max_packets, num_bufs, max_pkt_size);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  __init_waitqueue_head(& dma_q->wq, "&dma_q->wq", & __key);
  __init_waitqueue_head(& vbi_dma_q->wq, "&vbi_dma_q->wq", & __key___0);
  em28xx_capture_start(dev, 1);
  i = 0;
  goto ldv_47828;
  ldv_47827:
  rc = usb_submit_urb(*(isoc_bufs->urb + (unsigned long )i), 32U);
  if (rc != 0) {
    printk("\vsubmit of urb %i failed (error=%i)\n", i, rc);
    em28xx_uninit_isoc(dev, mode);
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_47828: ;
  if (isoc_bufs->num_bufs > i) {
    goto ldv_47827;
  } else {
    goto ldv_47829;
  }
  ldv_47829: ;
  return (0);
}
}
void em28xx_wake_i2c(struct em28xx *dev )
{ struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47850;
  ldv_47849: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         u32 ))0)) {
    (*(((__sd->ops)->core)->reset))(__sd, 0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47850: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47849;
  } else {
    goto ldv_47851;
  }
  ldv_47851:
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_47858;
  ldv_47857: ;
  if ((unsigned long )(__sd___0->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd___0->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                        u32 ))0)) {
    (*(((__sd___0->ops)->video)->s_routing))(__sd___0, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->vmux,
                                             0U, 0U);
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_47858: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47857;
  } else {
    goto ldv_47859;
  }
  ldv_47859:
  __mptr___3 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
  goto ldv_47866;
  ldv_47865: ;
  if ((unsigned long )(__sd___1->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd___1->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                       int ))0)) {
    (*(((__sd___1->ops)->video)->s_stream))(__sd___1, 0);
  } else {
  }
  __mptr___4 = (struct list_head const *)__sd___1->list.next;
  __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
  ldv_47866: ;
  if ((unsigned long )(& __sd___1->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_47865;
  } else {
    goto ldv_47867;
  }
  ldv_47867: ;
  return;
}
}
static struct list_head em28xx_devlist = {& em28xx_devlist, & em28xx_devlist};
static struct mutex em28xx_devlist_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "em28xx_devlist_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& em28xx_devlist_mutex.wait_list,
                                                                                  & em28xx_devlist_mutex.wait_list},
    0, 0, (void *)(& em28xx_devlist_mutex), {0, {0, 0}, "em28xx_devlist_mutex", 0,
                                             0UL}};
static struct list_head em28xx_extension_devlist = {& em28xx_extension_devlist, & em28xx_extension_devlist};
int em28xx_register_extension(struct em28xx_ops *ops )
{ struct em28xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = 0;
  ldv_mutex_lock_111(& em28xx_devlist_mutex);
  list_add_tail(& ops->next, & em28xx_extension_devlist);
  __mptr = (struct list_head const *)em28xx_devlist.next;
  dev = (struct em28xx *)__mptr + 0xfffffffffffffd10UL;
  goto ldv_47881;
  ldv_47880:
  (*(ops->init))(dev);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct em28xx *)__mptr___0 + 0xfffffffffffffd10UL;
  ldv_47881: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& em28xx_devlist)) {
    goto ldv_47880;
  } else {
    goto ldv_47882;
  }
  ldv_47882:
  ldv_mutex_unlock_112(& em28xx_devlist_mutex);
  printk("\016Em28xx: Initialized (%s) extension\n", ops->name);
  return (0);
}
}
void em28xx_unregister_extension(struct em28xx_ops *ops )
{ struct em28xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = 0;
  ldv_mutex_lock_113(& em28xx_devlist_mutex);
  __mptr = (struct list_head const *)em28xx_devlist.next;
  dev = (struct em28xx *)__mptr + 0xfffffffffffffd10UL;
  goto ldv_47898;
  ldv_47897:
  (*(ops->fini))(dev);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct em28xx *)__mptr___0 + 0xfffffffffffffd10UL;
  ldv_47898: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& em28xx_devlist)) {
    goto ldv_47897;
  } else {
    goto ldv_47899;
  }
  ldv_47899:
  list_del(& ops->next);
  ldv_mutex_unlock_114(& em28xx_devlist_mutex);
  printk("\016Em28xx: Removed (%s) extension\n", ops->name);
  return;
}
}
void em28xx_init_extension(struct em28xx *dev )
{ struct em28xx_ops const *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ops = 0;
  ldv_mutex_lock_115(& em28xx_devlist_mutex);
  list_add_tail(& dev->devlist, & em28xx_devlist);
  __mptr = (struct list_head const *)em28xx_extension_devlist.next;
  ops = (struct em28xx_ops const *)__mptr;
  goto ldv_47915;
  ldv_47914: ;
  if ((unsigned long )ops->init != (unsigned long )((int (* )(struct em28xx * ))0)) {
    (*(ops->init))(dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)ops->next.next;
  ops = (struct em28xx_ops const *)__mptr___0;
  ldv_47915: ;
  if ((unsigned long )(& ops->next) != (unsigned long )((struct list_head const *)(& em28xx_extension_devlist))) {
    goto ldv_47914;
  } else {
    goto ldv_47916;
  }
  ldv_47916:
  ldv_mutex_unlock_116(& em28xx_devlist_mutex);
  return;
}
}
void em28xx_close_extension(struct em28xx *dev )
{ struct em28xx_ops const *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ops = 0;
  ldv_mutex_lock_117(& em28xx_devlist_mutex);
  __mptr = (struct list_head const *)em28xx_extension_devlist.next;
  ops = (struct em28xx_ops const *)__mptr;
  goto ldv_47926;
  ldv_47925: ;
  if ((unsigned long )ops->fini != (unsigned long )((int (* )(struct em28xx * ))0)) {
    (*(ops->fini))(dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)ops->next.next;
  ops = (struct em28xx_ops const *)__mptr___0;
  ldv_47926: ;
  if ((unsigned long )(& ops->next) != (unsigned long )((struct list_head const *)(& em28xx_extension_devlist))) {
    goto ldv_47925;
  } else {
    goto ldv_47927;
  }
  ldv_47927:
  list_del(& dev->devlist);
  ldv_mutex_unlock_118(& em28xx_devlist_mutex);
  return;
}
}
void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_100(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_144(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_142(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_147(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_149(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_141(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_143(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_146(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_148(struct mutex *ldv_func_arg1 ) ;
__inline static struct thread_info *current_thread_info___1(void)
{ struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6273;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6273;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6273;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6273;
  default:
  __bad_percpu_size();
  }
  ldv_6273:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
static unsigned int vbibufs = 5U;
static void free_buffer___0(struct videobuf_queue *vq , struct em28xx_buffer *buf )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  unsigned long flags ;
  struct thread_info *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  fh = (struct em28xx_fh *)vq->priv_data;
  dev = fh->dev;
  flags = 0UL;
  tmp = current_thread_info___1();
  if (((unsigned long )tmp->preempt_count & 134217472UL) != 0UL) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/media/usb/em28xx/em28xx.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-vbi.c.prepared"),
                         "i" (128), "i" (12UL));
    ldv_44180: ;
    goto ldv_44180;
  } else {
  }
  tmp___0 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if ((unsigned long )dev->isoc_ctl.vbi_buf == (unsigned long )buf) {
    dev->isoc_ctl.vbi_buf = 0;
  } else {
  }
  spin_unlock_irqrestore(& dev->slock, flags);
  videobuf_vmalloc_free(& buf->vb);
  buf->vb.state = 0;
  return;
}
}
static int vbi_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)q->priv_data;
  dev = fh->dev;
  *size = (dev->vbi_width * dev->vbi_height) * 2U;
  if (*count == 0U) {
    *count = vbibufs;
  } else {
  }
  if (*count <= 1U) {
    *count = 2U;
  } else {
  }
  if (*count > 32U) {
    *count = 32U;
  } else {
  }
  return (0);
}
}
static int vbi_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb , enum v4l2_field field )
{ struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct em28xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  int rc ;
  {
  fh = (struct em28xx_fh *)q->priv_data;
  dev = fh->dev;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  rc = 0;
  buf->vb.size = (unsigned long )((dev->vbi_width * dev->vbi_height) * 2U);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  buf->vb.width = dev->vbi_width;
  buf->vb.height = dev->vbi_height;
  buf->vb.field = field;
  if ((unsigned int )buf->vb.state == 0U) {
    rc = videobuf_iolock(q, & buf->vb, 0);
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  free_buffer___0(q, buf);
  return (rc);
}
}
static void vbi_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{ struct em28xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct em28xx_dmaqueue *vbiq ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  fh = (struct em28xx_fh *)vq->priv_data;
  dev = fh->dev;
  vbiq = & dev->vbiq;
  buf->vb.state = 2;
  list_add_tail(& buf->vb.queue, & vbiq->active);
  return;
}
}
static void vbi_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{ struct em28xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  free_buffer___0(q, buf);
  return;
}
}
struct videobuf_queue_ops em28xx_vbi_qops = {& vbi_setup, & vbi_prepare, & vbi_queue, & vbi_release};
enum v4l2_field ldvarg3 ;
struct videobuf_queue *ldvarg0 ;
struct videobuf_buffer *ldvarg5 ;
unsigned int *ldvarg1 ;
struct videobuf_buffer *em28xx_vbi_qops_group2 ;
struct videobuf_queue *ldvarg4 ;
int ldv_retval_vbi_prepare ;
unsigned int *ldvarg2 ;
struct videobuf_queue *em28xx_vbi_qops_group1 ;
void ldv_main_exported_6(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 == 2) {
    vbi_release(em28xx_vbi_qops_group1, em28xx_vbi_qops_group2);
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_44234;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    vbi_queue(ldvarg4, ldvarg5);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    vbi_queue(ldvarg4, ldvarg5);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_44234;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    ldv_retval_vbi_prepare = vbi_prepare(em28xx_vbi_qops_group1, em28xx_vbi_qops_group2,
                                         ldvarg3);
    if (ldv_retval_vbi_prepare == 0) {
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_44234;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    vbi_setup(ldvarg0, ldvarg2, ldvarg1);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    vbi_setup(ldvarg0, ldvarg2, ldvarg1);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_44234;
  default: ;
  goto ldv_44234;
  }
  ldv_44234: ;
  return;
}
}
void ldv_mutex_lock_141(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_142(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_143(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_144(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_146(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_147(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_148(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_149(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
static int ldv_mutex_cred_guard_mutex_of_signal_struct ;
int ldv_mutex_lock_interruptible_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex_of_signal_struct(atomic_t *cnt ,
                                                                    struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  return;
}
}
static int ldv_mutex_ctrl_urb_lock_of_em28xx ;
int ldv_mutex_lock_interruptible_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
  return;
}
}
int ldv_mutex_trylock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ctrl_urb_lock_of_em28xx(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_ctrl_urb_lock_of_em28xx = 1;
  return;
}
}
static int ldv_mutex_em28xx_devlist_mutex ;
int ldv_mutex_lock_interruptible_em28xx_devlist_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_em28xx_devlist_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_em28xx_devlist_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_em28xx_devlist_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_em28xx_devlist_mutex(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_em28xx_devlist_mutex(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_em28xx_devlist_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_em28xx_devlist_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_em28xx_devlist_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_em28xx_devlist_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_lock_of_em28xx ;
int ldv_mutex_lock_interruptible_lock_of_em28xx(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_em28xx(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_em28xx = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_em28xx(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock_of_em28xx = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_em28xx(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_em28xx = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_em28xx(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_em28xx == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_em28xx = 1;
  return;
}
}
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
static int ldv_mutex_vb_lock_of_videobuf_queue ;
int ldv_mutex_lock_interruptible_vb_lock_of_videobuf_queue(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_vb_lock_of_videobuf_queue(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_vb_lock_of_videobuf_queue = 2;
  return;
}
}
int ldv_mutex_trylock_vb_lock_of_videobuf_queue(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_vb_lock_of_videobuf_queue(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_vb_lock_of_videobuf_queue(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_vb_lock_of_videobuf_queue = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  ldv_mutex_ctrl_urb_lock_of_em28xx = 1;
  ldv_mutex_em28xx_devlist_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_lock_of_em28xx = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_vb_lock_of_videobuf_queue = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void do_gettimeofday(struct timeval *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_del_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_master_recv(const struct i2c_client *arg0, char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_master_send(const struct i2c_client *arg0, const char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool schedule_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return ldv_malloc(sizeof(struct usb_device));
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_chip_match_host(const struct v4l2_dbg_match *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_disconnect(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device *arg0, struct i2c_adapter *arg1, struct i2c_board_info *arg2, const unsigned short *arg3) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
unsigned short __VERIFIER_nondet_ushort(void);
unsigned short int v4l2_i2c_subdev_addr(struct v4l2_subdev *arg0) {
  return __VERIFIER_nondet_ushort();
}
const unsigned short *v4l2_i2c_tuner_addrs(enum v4l2_i2c_tuner_type arg0) {
  return ldv_malloc(sizeof(unsigned short));
}
void v4l2_video_std_frame_period(int arg0, struct v4l2_fract *arg1) {
  return;
}
void v4l_bound_align_image(unsigned int *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int *arg4, unsigned int arg5, unsigned int arg6, unsigned int arg7, unsigned int arg8) {
  return;
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
struct video_device *video_device_alloc() {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release(struct video_device *arg0) {
  return;
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_free(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_queue_is_busy(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void videobuf_queue_vmalloc_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_stream(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_stop(struct videobuf_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void *videobuf_to_vmalloc(struct videobuf_buffer *arg0) {
  return ldv_malloc(0UL);
}
void videobuf_vmalloc_free(struct videobuf_buffer *arg0) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}

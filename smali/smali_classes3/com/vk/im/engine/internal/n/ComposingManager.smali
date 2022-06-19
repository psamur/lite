.class public Lcom/vk/im/engine/internal/n/ComposingManager;
.super Ljava/lang/Object;
.source "ComposingManager.java"


# static fields
.field private static final h:J

.field private static final i:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/vk/im/engine/ImEnvironment;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/vk/im/engine/models/typing/MsgComposing;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/vk/im/engine/internal/n/Entry;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/core/util/Pools$Pool;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/vk/im/engine/internal/n/ComposingManager;->h:J

    .line 2
    const-class v0, Lcom/vk/im/engine/internal/n/ComposingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vk/im/engine/internal/n/ComposingManager;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/vk/im/engine/ImEnvironment;)V
    .locals 2
    .param p1    # Lcom/vk/im/engine/ImEnvironment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->d:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->e:Ljava/util/Map;

    .line 4
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->f:Landroidx/core/util/Pools$Pool;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->g:Z

    .line 6
    iput-object p1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->a:Lcom/vk/im/engine/ImEnvironment;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->b:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/vk/im/engine/internal/n/ComposingManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a(ILcom/vk/im/engine/models/typing/MsgComposing;)V
    .locals 9
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .line 31
    iget-boolean v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->g:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object p1, Lcom/vk/metrics/eventtracking/VkTracker;->k:Lcom/vk/metrics/eventtracking/VkTracker;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "ComposingManager is already shuted down"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/vk/metrics/eventtracking/VkTracker;->a(Ljava/lang/Throwable;)V

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/vk/im/engine/internal/n/Entry;

    invoke-direct {v0, p1, p2}, Lcom/vk/im/engine/internal/n/Entry;-><init>(ILcom/vk/im/engine/models/typing/MsgComposing;)V

    .line 34
    invoke-direct {p0, v0}, Lcom/vk/im/engine/internal/n/ComposingManager;->a(Lcom/vk/im/engine/internal/n/Entry;)V

    .line 35
    iget-object v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 36
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    .line 37
    iget-object v2, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 39
    :goto_1
    new-instance v2, Lcom/vk/im/engine/internal/n/ComposingManager$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/vk/im/engine/internal/n/ComposingManager$a;-><init>(Lcom/vk/im/engine/internal/n/ComposingManager;ILcom/vk/im/engine/models/typing/MsgComposing;)V

    .line 40
    invoke-direct {p0}, Lcom/vk/im/engine/internal/n/ComposingManager;->c()Ljava/lang/Object;

    move-result-object v3

    .line 41
    iget-object v4, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->d:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/vk/im/engine/internal/n/ComposingManager;->h:J

    add-long/2addr v5, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 42
    iget-object v2, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->e:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 43
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->a:Lcom/vk/im/engine/ImEnvironment;

    new-instance v1, Lcom/vk/im/engine/events/OnTypingBeginEvent;

    sget-object v2, Lcom/vk/im/engine/internal/n/ComposingManager;->i:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, p2}, Lcom/vk/im/engine/events/OnTypingBeginEvent;-><init>(Ljava/lang/Object;ILcom/vk/im/engine/models/typing/MsgComposing;)V

    invoke-interface {v0, p0, v1}, Lcom/vk/im/engine/ImEnvironment;->a(Ljava/lang/Object;Lcom/vk/im/engine/events/Event;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/vk/im/engine/internal/n/ComposingManager;ILcom/vk/im/engine/models/typing/MsgComposing;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/vk/im/engine/internal/n/ComposingManager;->b(ILcom/vk/im/engine/models/typing/MsgComposing;)V

    return-void
.end method

.method private a(Lcom/vk/im/engine/internal/n/Entry;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-direct {p0, v0}, Lcom/vk/im/engine/internal/n/ComposingManager;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(ILcom/vk/im/engine/models/typing/MsgComposing;)V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .line 9
    new-instance v0, Lcom/vk/im/engine/internal/n/Entry;

    invoke-direct {v0, p1, p2}, Lcom/vk/im/engine/internal/n/Entry;-><init>(ILcom/vk/im/engine/models/typing/MsgComposing;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/vk/im/engine/internal/n/ComposingManager;->a(Lcom/vk/im/engine/internal/n/Entry;)V

    .line 11
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->a:Lcom/vk/im/engine/ImEnvironment;

    new-instance v1, Lcom/vk/im/engine/events/OnTypingEndEvent;

    sget-object v2, Lcom/vk/im/engine/internal/n/ComposingManager;->i:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, p2}, Lcom/vk/im/engine/events/OnTypingEndEvent;-><init>(Ljava/lang/Object;ILcom/vk/im/engine/models/typing/MsgComposing;)V

    invoke-interface {v0, p0, v1}, Lcom/vk/im/engine/ImEnvironment;->a(Ljava/lang/Object;Lcom/vk/im/engine/events/Event;)V

    :cond_1
    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/vk/im/engine/models/typing/MsgComposing;",
            ">;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/vk/im/engine/models/typing/MsgComposing;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/vk/im/engine/utils/collection/IntSet;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 24
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 25
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 26
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/im/engine/utils/collection/IntSet;

    const/4 v5, 0x0

    .line 27
    :goto_1
    invoke-interface {v4}, Lcom/vk/im/engine/utils/collection/IntCollection;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 28
    new-instance v6, Lcom/vk/im/engine/models/typing/MsgComposing;

    new-instance v7, Lcom/vk/im/engine/models/Member;

    invoke-interface {v4, v5}, Lcom/vk/im/engine/utils/collection/IntCollection;->b(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/vk/im/engine/models/Member;-><init>(I)V

    sget-object v8, Lcom/vk/im/engine/models/typing/ComposingType;->TEXT:Lcom/vk/im/engine/models/typing/ComposingType;

    invoke-direct {v6, v7, v8}, Lcom/vk/im/engine/models/typing/MsgComposing;-><init>(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/typing/ComposingType;)V

    .line 29
    invoke-direct {p0, v3, v6}, Lcom/vk/im/engine/internal/n/ComposingManager;->b(ILcom/vk/im/engine/models/typing/MsgComposing;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/util/SparseArray;Lcom/vk/im/engine/models/typing/ComposingType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/vk/im/engine/utils/collection/IntSet;",
            ">;",
            "Lcom/vk/im/engine/models/typing/ComposingType;",
            ")V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 15
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 16
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/im/engine/utils/collection/IntSet;

    const/4 v5, 0x0

    .line 17
    :goto_1
    invoke-interface {v4}, Lcom/vk/im/engine/utils/collection/IntCollection;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 18
    invoke-interface {v4, v5}, Lcom/vk/im/engine/utils/collection/IntCollection;->b(I)I

    move-result v6

    .line 19
    iget-object v7, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->a:Lcom/vk/im/engine/ImEnvironment;

    invoke-interface {v7}, Lcom/vk/im/engine/ImEnvironment;->Z()Lcom/vk/im/engine/models/Member;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vk/im/engine/models/Member;->t1()I

    move-result v7

    if-ne v6, v7, :cond_0

    goto :goto_2

    .line 20
    :cond_0
    new-instance v7, Lcom/vk/im/engine/models/typing/MsgComposing;

    new-instance v8, Lcom/vk/im/engine/models/Member;

    invoke-direct {v8, v6}, Lcom/vk/im/engine/models/Member;-><init>(I)V

    invoke-direct {v7, v8, p2}, Lcom/vk/im/engine/models/typing/MsgComposing;-><init>(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/typing/ComposingType;)V

    .line 21
    invoke-direct {p0, v3, v7}, Lcom/vk/im/engine/internal/n/ComposingManager;->a(ILcom/vk/im/engine/models/typing/MsgComposing;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, v2}, Lcom/vk/im/engine/internal/n/ComposingManager;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    iget-object v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/vk/im/engine/internal/n/ComposingManager;->g:Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

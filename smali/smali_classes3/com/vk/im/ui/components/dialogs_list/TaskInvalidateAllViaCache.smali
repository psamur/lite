.class Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;
.super Lcom/vk/im/ui/utils/ui_queue_task/UiQueueTask;
.source "TaskInvalidateAllViaCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/im/ui/utils/ui_queue_task/UiQueueTask<",
        "Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Lcom/vk/im/log/ImLogger;


# instance fields
.field private final e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Z

.field private g:Ljava/util/concurrent/Future;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;

    invoke-static {v0}, Lcom/vk/im/log/ImLoggerFactory;->a(Ljava/lang/Class;)Lcom/vk/im/log/ImLogger;

    move-result-object v0

    sput-object v0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->h:Lcom/vk/im/log/ImLogger;

    return-void
.end method

.method public constructor <init>(Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;ZZ)V
    .locals 0
    .param p1    # Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/vk/im/ui/utils/ui_queue_task/UiQueueTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    .line 3
    iput-boolean p2, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->f:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->g:Ljava/util/concurrent/Future;

    return-void
.end method

.method private a(Lcom/vk/im/engine/ImEngine;Lcom/vk/im/engine/models/dialogs/DialogsFilter;I)Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/vk/im/engine/ImEngine;->c()Lcom/vk/im/engine/models/Member;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/vk/im/engine/models/Weight;->h()Lcom/vk/im/engine/models/Weight;

    move-result-object v2

    .line 6
    new-instance v8, Lcom/vk/im/engine/commands/dialogs/DialogsHistoryGetArgs;

    sget-object v5, Lcom/vk/im/engine/models/Source;->CACHE:Lcom/vk/im/engine/models/Source;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/vk/im/engine/commands/dialogs/DialogsHistoryGetArgs;-><init>(Lcom/vk/im/engine/models/Weight;Lcom/vk/im/engine/models/dialogs/DialogsFilter;ILcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    .line 7
    new-instance p2, Lcom/vk/im/engine/commands/dialogs/DialogsHistoryExtGetCmd;

    invoke-direct {p2, v8}, Lcom/vk/im/engine/commands/dialogs/DialogsHistoryExtGetCmd;-><init>(Lcom/vk/im/engine/commands/dialogs/DialogsHistoryGetArgs;)V

    .line 8
    invoke-virtual {p1, p0, p2}, Lcom/vk/im/engine/ImEngine;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vk/im/engine/models/dialogs/DialogsHistoryExt;

    .line 9
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/DialogsHistoryExt;->a()Lcom/vk/im/engine/models/dialogs/DialogsHistory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vk/im/engine/models/dialogs/DialogsHistory;->e()Lcom/vk/im/engine/utils/collection/IntCollection;

    move-result-object p3

    .line 10
    new-instance v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;

    invoke-direct {v1}, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;-><init>()V

    .line 11
    iput-object v0, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->a:Lcom/vk/im/engine/models/Member;

    .line 12
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/DialogsHistoryExt;->a()Lcom/vk/im/engine/models/dialogs/DialogsHistory;

    move-result-object v0

    iput-object v0, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->b:Lcom/vk/im/engine/models/dialogs/DialogsHistory;

    .line 13
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/DialogsHistoryExt;->b()Lcom/vk/im/engine/models/ProfilesInfo;

    move-result-object p2

    iput-object p2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->c:Lcom/vk/im/engine/models/ProfilesInfo;

    .line 14
    sget-object p2, Lcom/vk/im/ui/components/dialogs_list/formatters/MsgBodiesFormatter;->INSTANCE:Lcom/vk/im/ui/components/dialogs_list/formatters/MsgBodiesFormatter;

    iget-object v0, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->b:Lcom/vk/im/engine/models/dialogs/DialogsHistory;

    iget-object v2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->c:Lcom/vk/im/engine/models/ProfilesInfo;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/ProfilesInfo;->A1()Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/vk/im/ui/components/dialogs_list/formatters/MsgBodiesFormatter;->a(Lcom/vk/im/engine/models/dialogs/DialogsHistory;Lcom/vk/im/engine/models/ProfilesSimpleInfo;)Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->d:Landroid/util/SparseArray;

    .line 15
    new-instance p2, Lcom/vk/im/engine/i/g/ComposingGetAllCmd;

    invoke-direct {p2}, Lcom/vk/im/engine/i/g/ComposingGetAllCmd;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/vk/im/engine/ImEngine;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    iput-object p2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->e:Ljava/util/Map;

    .line 16
    new-instance p2, Lcom/vk/im/engine/commands/etc/ContainsSendingMsgCmd;

    invoke-direct {p2, p3}, Lcom/vk/im/engine/commands/etc/ContainsSendingMsgCmd;-><init>(Lcom/vk/im/engine/utils/collection/IntCollection;)V

    invoke-virtual {p1, p0, p2}, Lcom/vk/im/engine/ImEngine;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    iput-object p2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->f:Landroid/util/SparseBooleanArray;

    .line 17
    new-instance p2, Lcom/vk/im/engine/commands/etc/ContainsRecentlyFailedMsgCmd;

    invoke-direct {p2, p3}, Lcom/vk/im/engine/commands/etc/ContainsRecentlyFailedMsgCmd;-><init>(Lcom/vk/im/engine/utils/collection/IntCollection;)V

    invoke-virtual {p1, p0, p2}, Lcom/vk/im/engine/ImEngine;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    iput-object p2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->g:Landroid/util/SparseBooleanArray;

    .line 18
    new-instance p2, Lcom/vk/im/engine/commands/dialogs/DialogsCountGetCmd;

    sget-object p3, Lcom/vk/im/engine/models/dialogs/DialogsFilter;->REQUESTS:Lcom/vk/im/engine/models/dialogs/DialogsFilter;

    sget-object v0, Lcom/vk/im/engine/models/Source;->CACHE:Lcom/vk/im/engine/models/Source;

    const/4 v2, 0x0

    invoke-direct {p2, p3, v0, v2}, Lcom/vk/im/engine/commands/dialogs/DialogsCountGetCmd;-><init>(Lcom/vk/im/engine/models/dialogs/DialogsFilter;Lcom/vk/im/engine/models/Source;Z)V

    invoke-virtual {p1, p0, p2}, Lcom/vk/im/engine/ImEngine;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vk/im/engine/models/EntityValue;

    iput-object p2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->h:Lcom/vk/im/engine/models/EntityValue;

    .line 19
    new-instance p2, Lcom/vk/im/engine/commands/dialogs/DialogsFilterEnabledCmd;

    sget-object p3, Lcom/vk/im/engine/models/dialogs/DialogsFilter;->BUSINESS_NOTIFY:Lcom/vk/im/engine/models/dialogs/DialogsFilter;

    sget-object v0, Lcom/vk/im/engine/models/Source;->CACHE:Lcom/vk/im/engine/models/Source;

    const/4 v3, 0x0

    invoke-direct {p2, p3, v0, v2, v3}, Lcom/vk/im/engine/commands/dialogs/DialogsFilterEnabledCmd;-><init>(Lcom/vk/im/engine/models/dialogs/DialogsFilter;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    invoke-virtual {p1, p0, p2}, Lcom/vk/im/engine/ImEngine;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vk/im/engine/models/EntityValue;

    iput-object p2, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->i:Lcom/vk/im/engine/models/EntityValue;

    .line 20
    new-instance p2, Lcom/vk/im/engine/commands/dialogs/DialogsCountGetCmd;

    sget-object p3, Lcom/vk/im/engine/models/dialogs/DialogsFilter;->BUSINESS_NOTIFY:Lcom/vk/im/engine/models/dialogs/DialogsFilter;

    sget-object v0, Lcom/vk/im/engine/models/Source;->CACHE:Lcom/vk/im/engine/models/Source;

    invoke-direct {p2, p3, v0, v2}, Lcom/vk/im/engine/commands/dialogs/DialogsCountGetCmd;-><init>(Lcom/vk/im/engine/models/dialogs/DialogsFilter;Lcom/vk/im/engine/models/Source;Z)V

    invoke-virtual {p1, p0, p2}, Lcom/vk/im/engine/ImEngine;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/im/engine/models/EntityValue;

    iput-object p1, v1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->j:Lcom/vk/im/engine/models/EntityValue;

    return-object v1
.end method

.method static synthetic a(Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;Lcom/vk/im/engine/ImEngine;Lcom/vk/im/engine/models/dialogs/DialogsFilter;I)Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->a(Lcom/vk/im/engine/ImEngine;Lcom/vk/im/engine/models/dialogs/DialogsFilter;I)Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/vk/im/ui/utils/ui_queue_task/UiQueueTask;->d(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/vk/im/ui/utils/ui_queue_task/UiQueueTask;->c(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;)V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->q()Lcom/vk/im/ui/components/dialogs_list/State;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {v1}, Lcom/vk/im/ui/q/BasePresenter;->c()Lcom/vk/im/ui/q/BaseViewController;

    move-result-object v1

    check-cast v1, Lcom/vk/im/ui/components/dialogs_list/vc_impl/DialogsListVc;

    .line 23
    iget-object v2, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->a:Lcom/vk/im/engine/models/Member;

    invoke-virtual {v0, v2}, Lcom/vk/im/ui/components/dialogs_list/State;->a(Lcom/vk/im/engine/models/Member;)V

    .line 24
    iget-object v2, v0, Lcom/vk/im/ui/components/dialogs_list/State;->d:Lcom/vk/im/engine/models/dialogs/DialogsHistory;

    iget-object v3, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->b:Lcom/vk/im/engine/models/dialogs/DialogsHistory;

    invoke-virtual {v2, v3}, Lcom/vk/im/engine/models/dialogs/DialogsHistory;->a(Lcom/vk/im/engine/models/dialogs/DialogsHistory;)V

    .line 25
    iget-object v2, v0, Lcom/vk/im/ui/components/dialogs_list/State;->e:Lcom/vk/im/engine/models/ProfilesInfo;

    iget-object v3, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->c:Lcom/vk/im/engine/models/ProfilesInfo;

    invoke-virtual {v2, v3}, Lcom/vk/im/engine/models/ProfilesInfo;->d(Lcom/vk/im/engine/models/ProfilesInfo;)V

    .line 26
    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialogs_list/State;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 27
    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialogs_list/State;->k()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->e:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialogs_list/State;->n()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 29
    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialogs_list/State;->n()Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->d:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Lcom/vk/core/extensions/SparseArrayExt1;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 30
    iget-object v2, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Lcom/vk/im/ui/components/dialogs_list/State;->b(Landroid/util/SparseBooleanArray;)V

    .line 31
    iget-object v2, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Lcom/vk/im/ui/components/dialogs_list/State;->a(Landroid/util/SparseBooleanArray;)V

    .line 32
    iget-object v2, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->h:Lcom/vk/im/engine/models/EntityValue;

    invoke-virtual {v0, v2}, Lcom/vk/im/ui/components/dialogs_list/State;->c(Lcom/vk/im/engine/models/EntityValue;)V

    .line 33
    iget-object v2, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->i:Lcom/vk/im/engine/models/EntityValue;

    invoke-virtual {v0, v2}, Lcom/vk/im/ui/components/dialogs_list/State;->b(Lcom/vk/im/engine/models/EntityValue;)V

    .line 34
    iget-object p1, p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;->j:Lcom/vk/im/engine/models/EntityValue;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/dialogs_list/State;->a(Lcom/vk/im/engine/models/EntityValue;)V

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialogs_list/State;->e()Lcom/vk/im/ui/components/dialogs_list/v/DialogsListModels5;

    move-result-object p1

    .line 36
    invoke-virtual {v1, p0, p1}, Lcom/vk/im/ui/components/dialogs_list/vc_impl/DialogsListVc;->a(Ljava/lang/Object;Lcom/vk/im/ui/components/dialogs_list/v/DialogsListModels5;)V

    .line 37
    :cond_0
    iget-boolean p1, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->f:Z

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {p1}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->n()Lcom/vk/im/engine/models/dialogs/DialogsFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->b(Lcom/vk/im/engine/models/dialogs/DialogsFilter;)V

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {p1, p0}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->h:Lcom/vk/im/log/ImLogger;

    invoke-interface {v0, p1}, Lcom/vk/im/log/ImLogger;->a(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {v0}, Lcom/vk/im/ui/q/BasePresenter;->c()Lcom/vk/im/ui/q/BaseViewController;

    move-result-object v0

    check-cast v0, Lcom/vk/im/ui/components/dialogs_list/vc_impl/DialogsListVc;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/dialogs_list/vc_impl/DialogsListVc;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;

    invoke-virtual {p0, p1}, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->a(Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$b;)V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->g:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->o()Lcom/vk/im/engine/ImEngine;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {v1}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->n()Lcom/vk/im/engine/models/dialogs/DialogsFilter;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {v2}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->m()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->e:Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;

    invoke-virtual {v3}, Lcom/vk/im/ui/components/dialogs_list/DialogsListPresenter;->q()Lcom/vk/im/ui/components/dialogs_list/State;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/vk/im/ui/components/dialogs_list/State;->d:Lcom/vk/im/engine/models/dialogs/DialogsHistory;

    iget-object v3, v3, Lcom/vk/im/engine/models/History;->list:Ljava/util/List;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 7
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8
    invoke-static {}, Lcom/vk/im/ui/components/common/ImExecutors;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$a;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache$a;-><init>(Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;Lcom/vk/im/engine/ImEngine;Lcom/vk/im/engine/models/dialogs/DialogsFilter;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/im/ui/components/dialogs_list/TaskInvalidateAllViaCache;->g:Ljava/util/concurrent/Future;

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskInvalidateAllViaCache{} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/vk/im/ui/utils/ui_queue_task/UiQueueTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd$onExecute$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MsgRequestStatusChangeCmd.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd;->a(Lcom/vk/im/engine/ImEnvironment;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions2<",
        "Lcom/vk/instantjobs/InstantJob;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd;


# direct methods
.method constructor <init>(Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd$onExecute$1;->this$0:Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/instantjobs/InstantJob;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/vk/im/engine/internal/jobs/requests/MsgRequestChangeStatusJob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd$onExecute$1;->this$0:Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd;

    invoke-virtual {v0}, Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd;->c()Lcom/vk/im/engine/utils/collection/IntCollection;

    move-result-object v0

    check-cast p1, Lcom/vk/im/engine/internal/jobs/requests/MsgRequestChangeStatusJob;

    invoke-virtual {p1}, Lcom/vk/im/engine/internal/jobs/requests/MsgRequestChangeStatusJob;->l()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/vk/im/engine/utils/collection/IntCollection;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/instantjobs/InstantJob;

    invoke-virtual {p0, p1}, Lcom/vk/im/engine/commands/requests/MsgRequestStatusChangeCmd$onExecute$1;->a(Lcom/vk/instantjobs/InstantJob;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$sendMessage$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MsgSendVc.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;


# direct methods
.method constructor <init>(Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;)V
    .locals 0

    iput-object p1, p0, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$sendMessage$3;->this$0:Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$sendMessage$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$sendMessage$3;->this$0:Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;

    invoke-virtual {v0}, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;->d()V

    return-void
.end method

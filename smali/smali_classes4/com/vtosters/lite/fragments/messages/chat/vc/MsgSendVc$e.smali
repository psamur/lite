.class final Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$e;
.super Ljava/lang/Object;
.source "MsgSendVc.kt"

# interfaces
.implements Lcom/vk/stickers/f0/KeyboardPopup$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;->j()Lcom/vk/stickers/f0/KeyboardPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;


# direct methods
.method constructor <init>(Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;)V
    .locals 0

    iput-object p1, p0, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$e;->a:Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$e;->a:Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;

    invoke-static {v0}, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;->h(Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;)Lcom/vk/im/engine/models/dialogs/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/dialogs/Dialog;->D0()Lcom/vk/im/engine/models/conversations/BotKeyboard;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    sget-object v1, Lcom/vk/im/ui/components/bot_keyboard/BotKeyboardDimensionsCalculator;->INSTANCE:Lcom/vk/im/ui/components/bot_keyboard/BotKeyboardDimensionsCalculator;

    iget-object v2, p0, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc$e;->a:Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;

    invoke-static {v2}, Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;->b(Lcom/vtosters/lite/fragments/messages/chat/vc/MsgSendVc;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vk/im/ui/components/bot_keyboard/BotKeyboardDimensionsCalculator;->a(Landroid/content/Context;Lcom/vk/im/engine/models/conversations/BotKeyboard;)I

    move-result v0

    :goto_1
    return v0
.end method

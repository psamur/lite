.class final Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager$deleteExpireMsgByVkId$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogsEntryStorageManager.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager;->f(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions2<",
        "Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;",
        "Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $msgVkId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager$deleteExpireMsgByVkId$1;->$msgVkId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;)Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;
    .locals 36

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;->k()Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager$deleteExpireMsgByVkId$1;->$msgVkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/l;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v30, v1

    .line 3
    new-instance v2, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager$deleteExpireMsgByVkId$1$$special$$inlined$letIf$lambda$1;

    move-object/from16 v15, p1

    invoke-direct {v2, v0, v15}, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager$deleteExpireMsgByVkId$1$$special$$inlined$letIf$lambda$1;-><init>(Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager$deleteExpireMsgByVkId$1;Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;)V

    invoke-static {v1, v2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Lkotlin/jvm/b/Functions2;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    move v15, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const v34, 0x3bffffff

    const/16 v35, 0x0

    move-object/from16 v2, p1

    .line 4
    invoke-static/range {v2 .. v35}, Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;->a(Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;IIIIIIIILcom/vk/im/engine/models/conversations/PushSettings;Lcom/vk/im/engine/models/conversations/PushSettings;Lcom/vk/im/engine/models/WritePermission;ZZLcom/vk/im/engine/models/messages/PinnedMsg;Lcom/vk/im/engine/models/messages/DraftMsg;ZLcom/vk/im/engine/models/dialogs/ConversationBar;Lcom/vk/im/engine/models/dialogs/ChatSettings;Lcom/vk/im/engine/models/dialogs/DialogThemeName;Lcom/vk/im/engine/models/conversations/BotKeyboard;ZLcom/vk/im/engine/models/MsgRequestStatus;Lcom/vk/im/engine/models/Member;JLcom/vk/im/engine/models/MsgRequestStatus;Ljava/util/List;Ljava/util/List;Lcom/vk/im/engine/models/dialogs/BusinessNotifyInfo;ZIILjava/lang/Object;)Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;

    invoke-virtual {p0, p1}, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager$deleteExpireMsgByVkId$1;->a(Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;)Lcom/vk/im/engine/internal/storage/models/DialogStorageModel;

    move-result-object p1

    return-object p1
.end method

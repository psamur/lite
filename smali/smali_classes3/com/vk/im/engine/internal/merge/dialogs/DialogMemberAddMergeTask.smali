.class public final Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;
.super Lcom/vk/im/engine/internal/k/MergeTask;
.source "DialogMemberAddMergeTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/im/engine/internal/k/MergeTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/vk/im/engine/models/Member;

.field private final c:Z


# direct methods
.method public constructor <init>(ILcom/vk/im/engine/models/Member;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vk/im/engine/internal/k/MergeTask;-><init>()V

    iput p1, p0, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;->a:I

    iput-object p2, p0, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;->b:Lcom/vk/im/engine/models/Member;

    iput-boolean p3, p0, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;->c:Z

    return-void
.end method

.method public static final synthetic a(Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;->c:Z

    return p0
.end method

.method public static final synthetic b(Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;->a:I

    return p0
.end method

.method public static final synthetic c(Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;)Lcom/vk/im/engine/models/Member;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;->b:Lcom/vk/im/engine/models/Member;

    return-object p0
.end method


# virtual methods
.method protected b(Lcom/vk/im/engine/ImEnvironment;)Ljava/lang/Boolean;
    .locals 1

    .line 3
    invoke-interface {p1}, Lcom/vk/im/engine/ImEnvironment;->a0()Lcom/vk/im/engine/internal/storage/StorageManager;

    move-result-object p1

    new-instance v0, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask$onMerge$1;

    invoke-direct {v0, p0}, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask$onMerge$1;-><init>(Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;)V

    invoke-virtual {p1, v0}, Lcom/vk/im/engine/internal/storage/StorageManager;->a(Lkotlin/jvm/b/Functions2;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/vk/im/engine/ImEnvironment;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/vk/im/engine/internal/merge/dialogs/DialogMemberAddMergeTask;->b(Lcom/vk/im/engine/ImEnvironment;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

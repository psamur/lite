.class final Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel$b;
.super Ljava/lang/Object;
.source "BaseAttachesModel.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel;->e()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel$b;

    invoke-direct {v0}, Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel$b;-><init>()V

    sput-object v0, Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel$b;->INSTANCE:Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/vk/im/ui/components/attaches_history/attaches/l/ListWithDiff;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/views/adapter_delegate/ListItem;",
            ">;>;)",
            "Lcom/vk/im/ui/components/attaches_history/attaches/l/ListWithDiff;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    new-instance v1, Lcom/vk/im/ui/components/attaches_history/attaches/k/DiffCallback;

    const-string v2, "previous"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "next"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p1}, Lcom/vk/im/ui/components/attaches_history/attaches/k/DiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    const-string v1, "DiffUtil.calculateDiff(D\u2026Callback(previous, next))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/vk/im/ui/components/attaches_history/attaches/l/ListWithDiff;

    invoke-direct {v1, p1, v0}, Lcom/vk/im/ui/components/attaches_history/attaches/l/ListWithDiff;-><init>(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/vk/im/ui/components/attaches_history/attaches/l/BaseAttachesModel$b;->a(Ljava/util/List;)Lcom/vk/im/ui/components/attaches_history/attaches/l/ListWithDiff;

    move-result-object p1

    return-object p1
.end method

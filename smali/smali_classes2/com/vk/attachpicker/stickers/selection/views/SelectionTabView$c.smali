.class final Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView$c;
.super Ljava/lang/Object;
.source "SelectionTabView.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView$c;->a:Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Can\'t load stickers"

    aput-object v2, v0, v1

    const-string v1, "th"

    .line 1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/vk/log/L;->b([Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView$c;->a:Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView;

    invoke-static {p1}, Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView;->d(Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/stickers/selection/views/SelectionTabView$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

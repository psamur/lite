.class final Lcom/vk/core/view/search/AnimStartSearchView$showVoiceAndCancelWithAnim$$inlined$also$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimStartSearchView.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/core/view/search/AnimStartSearchView;->b(Z)V
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
.field final synthetic $viewForHide$inlined:Landroid/view/View;

.field final synthetic $viewForShow$inlined:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/core/view/search/AnimStartSearchView$showVoiceAndCancelWithAnim$$inlined$also$lambda$2;->$viewForShow$inlined:Landroid/view/View;

    iput-object p2, p0, Lcom/vk/core/view/search/AnimStartSearchView$showVoiceAndCancelWithAnim$$inlined$also$lambda$2;->$viewForHide$inlined:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vk/core/view/search/AnimStartSearchView$showVoiceAndCancelWithAnim$$inlined$also$lambda$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/vk/core/view/search/AnimStartSearchView$showVoiceAndCancelWithAnim$$inlined$also$lambda$2;->$viewForHide$inlined:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

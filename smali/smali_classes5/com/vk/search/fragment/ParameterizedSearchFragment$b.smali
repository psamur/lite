.class public final Lcom/vk/search/fragment/ParameterizedSearchFragment$b;
.super Lcom/vk/lists/HeaderAdapter$b;
.source "ParameterizedSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/search/fragment/ParameterizedSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/lists/HeaderAdapter$b<",
        "Lcom/vk/common/i/RecyclerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/vk/lists/HeaderAdapter$b;-><init>()V

    const v0, 0x7f120302

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ctx.getString(R.string.d\u2026r_search_recommendations)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vk/search/fragment/ParameterizedSearchFragment$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/vk/search/fragment/ParameterizedSearchFragment$b;->a(Landroid/view/ViewGroup;)Lcom/vk/common/widget/HeaderHolder;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;)Lcom/vk/common/widget/HeaderHolder;
    .locals 7

    .line 5
    new-instance v6, Lcom/vk/common/widget/HeaderHolder;

    const/4 v2, 0x0

    const v3, 0x7f0d04ee

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vk/common/widget/HeaderHolder;-><init>(Landroid/view/ViewGroup;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Lcom/vk/common/widget/HeaderHolder;

    iget-object p2, p0, Lcom/vk/search/fragment/ParameterizedSearchFragment$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/vk/common/widget/HeaderHolder;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.vk.common.widget.HeaderHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/vk/common/i/RecyclerItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/vk/common/i/RecyclerItem;Lcom/vk/common/i/RecyclerItem;II)Z
    .locals 0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/vk/common/i/RecyclerItem;->b()I

    move-result p1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Lcom/vk/common/i/RecyclerItem;->b()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/vk/common/i/RecyclerItem;

    invoke-virtual {p0, p1}, Lcom/vk/search/fragment/ParameterizedSearchFragment$b;->a(Lcom/vk/common/i/RecyclerItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 0

    .line 3
    check-cast p1, Lcom/vk/common/i/RecyclerItem;

    check-cast p2, Lcom/vk/common/i/RecyclerItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/search/fragment/ParameterizedSearchFragment$b;->a(Lcom/vk/common/i/RecyclerItem;Lcom/vk/common/i/RecyclerItem;II)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b(Lcom/vk/common/i/RecyclerItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/common/i/RecyclerItem;

    invoke-virtual {p0, p1}, Lcom/vk/search/fragment/ParameterizedSearchFragment$b;->b(Lcom/vk/common/i/RecyclerItem;)Z

    move-result p1

    return p1
.end method

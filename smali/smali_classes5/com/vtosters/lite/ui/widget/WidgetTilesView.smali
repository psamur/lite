.class public Lcom/vtosters/lite/ui/widget/WidgetTilesView;
.super Lcom/vtosters/lite/ui/widget/WidgetItemsView;
.source "WidgetTilesView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vtosters/lite/ui/widget/WidgetItemsView<",
        "Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/vtosters/lite/ui/widget/WidgetTilesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/vtosters/lite/ui/widget/WidgetTilesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/vtosters/lite/ui/widget/WidgetItemsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x41000000    # 8.0f

    .line 4
    invoke-static {p2}, Lcom/vk/core/util/Screen;->d(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p3, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070249

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    sget v0, Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;->f:I

    sub-int/2addr p2, v0

    .line 6
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vtosters/lite/ui/widget/WidgetTilesView;->d:Landroid/widget/LinearLayout;

    .line 7
    iget-object v0, p0, Lcom/vtosters/lite/ui/widget/WidgetTilesView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    iget-object v0, p0, Lcom/vtosters/lite/ui/widget/WidgetTilesView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, p3, p2, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 9
    new-instance p2, Landroid/widget/HorizontalScrollView;

    invoke-direct {p2, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p2, p3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 12
    iget-object p1, p0, Lcom/vtosters/lite/ui/widget/WidgetTilesView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/newsfeed/entries/widget/WidgetTiles$Item;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-super {p0, v0}, Lcom/vtosters/lite/ui/widget/WidgetItemsView;->a(I)V

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/vtosters/lite/ui/widget/WidgetItemsView;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/dto/newsfeed/entries/widget/WidgetTiles$Item;

    invoke-virtual {v1, v2}, Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;->a(Lcom/vk/dto/newsfeed/entries/widget/WidgetTiles$Item;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/widget/WidgetTilesView;->a(Landroid/content/Context;)Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;)Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;

    invoke-direct {v0, p1}, Lcom/vtosters/lite/ui/widget/WidgetTilesItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/vk/dto/newsfeed/entries/widget/Widget;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/vtosters/lite/ui/widget/WidgetTitleView;->a(Lcom/vk/dto/newsfeed/entries/widget/Widget;)V

    .line 4
    instance-of v0, p1, Lcom/vk/dto/newsfeed/entries/widget/WidgetTiles;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/vk/dto/newsfeed/entries/widget/WidgetTiles;

    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/widget/WidgetTiles;->C1()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vtosters/lite/ui/widget/WidgetTilesView;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected getViewHost()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vtosters/lite/ui/widget/WidgetTilesView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

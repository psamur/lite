.class public final Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem$a;
.super Ljava/lang/Object;
.source "ArticleAuthorPageItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/dto/articles/Article;)Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;

    invoke-virtual {p1}, Lcom/vk/dto/articles/Article;->z1()Lcom/vk/dto/photo/Photo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;-><init>(Lcom/vk/dto/articles/Article;Z)V

    return-object v0
.end method

.method public final b(Lcom/vk/dto/articles/Article;)Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;-><init>(Lcom/vk/dto/articles/Article;Z)V

    return-object v0
.end method

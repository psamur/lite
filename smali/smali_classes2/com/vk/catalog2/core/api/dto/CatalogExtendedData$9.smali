.class final Lcom/vk/catalog2/core/api/dto/CatalogExtendedData$9;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogExtendedData.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/catalog2/core/api/dto/CatalogExtendedData;-><init>(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions2<",
        "Lcom/vk/dto/music/SearchSuggestion;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/catalog2/core/api/dto/CatalogExtendedData$9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/catalog2/core/api/dto/CatalogExtendedData$9;

    invoke-direct {v0}, Lcom/vk/catalog2/core/api/dto/CatalogExtendedData$9;-><init>()V

    sput-object v0, Lcom/vk/catalog2/core/api/dto/CatalogExtendedData$9;->a:Lcom/vk/catalog2/core/api/dto/CatalogExtendedData$9;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/dto/music/SearchSuggestion;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/vk/dto/music/SearchSuggestion;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/dto/music/SearchSuggestion;

    invoke-virtual {p0, p1}, Lcom/vk/catalog2/core/api/dto/CatalogExtendedData$9;->a(Lcom/vk/dto/music/SearchSuggestion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/vk/dto/newsfeed/entries/Html5Entry$Html5Action$b;
.super Ljava/lang/Object;
.source "Html5Entry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/dto/newsfeed/entries/Html5Entry$Html5Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lcom/vk/dto/newsfeed/entries/Html5Entry$Html5Action$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/vk/dto/newsfeed/entries/Html5Entry$Html5Action;
    .locals 2

    const-string v0, "name"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.getString(\"name\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v1, Lcom/vk/dto/common/Action;->a:Lcom/vk/dto/common/Action$b;

    invoke-virtual {v1, p1}, Lcom/vk/dto/common/Action$b;->a(Lorg/json/JSONObject;)Lcom/vk/dto/common/Action;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lcom/vk/dto/newsfeed/entries/Html5Entry$Html5Action;

    invoke-direct {v1, v0, p1}, Lcom/vk/dto/newsfeed/entries/Html5Entry$Html5Action;-><init>(Ljava/lang/String;Lcom/vk/dto/common/Action;)V

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    const/4 p1, 0x0

    throw p1
.end method

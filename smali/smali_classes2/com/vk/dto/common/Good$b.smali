.class Lcom/vk/dto/common/Good$b;
.super Ljava/lang/Object;
.source "Good.java"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/dto/common/Good;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/Functions2<",
        "Lorg/json/JSONObject;",
        "Lcom/vk/dto/market/VariantGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/vk/dto/common/Good;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/vk/dto/market/VariantGroup;
    .locals 1

    .line 1
    sget-object v0, Lcom/vk/dto/market/VariantGroup;->d:Lcom/vk/dto/market/VariantGroup$c;

    invoke-virtual {v0, p1}, Lcom/vk/dto/market/VariantGroup$c;->a(Lorg/json/JSONObject;)Lcom/vk/dto/market/VariantGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vk/dto/common/Good$b;->a(Lorg/json/JSONObject;)Lcom/vk/dto/market/VariantGroup;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/vk/common/links/OpenFunctionsKt$openChat$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OpenFunctions.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/common/links/OpenFunctionsKt;->a(Landroid/content/Context;IZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/common/links/OpenCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions2<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vk/common/links/OpenCallback;


# direct methods
.method constructor <init>(Lcom/vk/common/links/OpenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/common/links/OpenFunctionsKt$openChat$2;->$callback:Lcom/vk/common/links/OpenCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/common/links/OpenFunctionsKt$openChat$2;->$callback:Lcom/vk/common/links/OpenCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vk/common/links/OpenCallback;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/vk/common/links/OpenFunctionsKt$openChat$2;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

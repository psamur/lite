.class public final Lcom/vk/bridges/StoriesBridge1;
.super Ljava/lang/Object;
.source "StoriesBridge.kt"


# static fields
.field public static a:Lcom/vk/bridges/StoriesBridge;


# direct methods
.method public static final a()Lcom/vk/bridges/StoriesBridge;
    .locals 1

    .line 1
    sget-object v0, Lcom/vk/bridges/StoriesBridge1;->a:Lcom/vk/bridges/StoriesBridge;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "storiesBridge"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final a(Lcom/vk/bridges/StoriesBridge;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/vk/bridges/StoriesBridge1;->a:Lcom/vk/bridges/StoriesBridge;

    return-void
.end method

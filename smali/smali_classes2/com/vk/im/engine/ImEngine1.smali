.class public final Lcom/vk/im/engine/ImEngine1;
.super Ljava/lang/Object;
.source "ImEngine.kt"


# static fields
.field public static volatile a:Lcom/vk/im/engine/ImEngine;


# direct methods
.method public static final a()Lcom/vk/im/engine/ImEngine;
    .locals 1

    .line 1
    sget-object v0, Lcom/vk/im/engine/ImEngine1;->a:Lcom/vk/im/engine/ImEngine;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "imEngine"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final a(Lcom/vk/im/engine/ImEngine;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/vk/im/engine/ImEngine1;->a:Lcom/vk/im/engine/ImEngine;

    return-void
.end method

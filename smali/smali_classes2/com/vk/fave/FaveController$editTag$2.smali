.class final Lcom/vk/fave/FaveController$editTag$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FaveController.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/fave/FaveController;->a(Landroid/content/Context;Lcom/vk/fave/entities/FaveTag;Ljava/lang/String;)Lio/reactivex/Observable;
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
.field final synthetic $newName:Ljava/lang/String;

.field final synthetic $tag:Lcom/vk/fave/entities/FaveTag;


# direct methods
.method constructor <init>(Lcom/vk/fave/entities/FaveTag;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/fave/FaveController$editTag$2;->$tag:Lcom/vk/fave/entities/FaveTag;

    iput-object p2, p0, Lcom/vk/fave/FaveController$editTag$2;->$newName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vk/fave/FaveController$editTag$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    invoke-static {}, Lb/h/g/l/NotificationCenter;->a()Lb/h/g/l/NotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/vk/fave/entities/FaveTag;

    iget-object v2, p0, Lcom/vk/fave/FaveController$editTag$2;->$tag:Lcom/vk/fave/entities/FaveTag;

    invoke-virtual {v2}, Lcom/vk/fave/entities/FaveTag;->u1()I

    move-result v2

    iget-object v3, p0, Lcom/vk/fave/FaveController$editTag$2;->$newName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vk/fave/entities/FaveTag;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4b5

    invoke-virtual {v0, v2, v1}, Lb/h/g/l/NotificationCenter;->a(ILjava/lang/Object;)V

    return-void
.end method

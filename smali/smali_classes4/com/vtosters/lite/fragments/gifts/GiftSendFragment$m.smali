.class public final Lcom/vtosters/lite/fragments/gifts/GiftSendFragment$m;
.super Lcom/vtosters/lite/api/SimpleCallback;
.source "GiftSendFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;->u0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vtosters/lite/api/SimpleCallback<",
        "Lcom/vk/dto/gift/CatalogedGift;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;


# direct methods
.method constructor <init>(Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;Lcom/vk/core/fragments/FragmentImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/core/fragments/FragmentImpl;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment$m;->c:Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;

    invoke-direct {p0, p2}, Lcom/vtosters/lite/api/SimpleCallback;-><init>(Lcom/vk/core/fragments/FragmentImpl;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/dto/gift/CatalogedGift;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment$m;->c:Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;->a(Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object v0, p0, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment$m;->c:Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;

    invoke-static {v0, p1}, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;->a(Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;Lcom/vk/dto/gift/CatalogedGift;)V

    .line 4
    iget-object p1, p0, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment$m;->c:Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;

    invoke-static {p1}, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;->i(Lcom/vtosters/lite/fragments/gifts/GiftSendFragment;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/dto/gift/CatalogedGift;

    invoke-virtual {p0, p1}, Lcom/vtosters/lite/fragments/gifts/GiftSendFragment$m;->a(Lcom/vk/dto/gift/CatalogedGift;)V

    return-void
.end method

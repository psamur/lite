.class Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment$b;
.super Ljava/lang/Object;
.source "FriendRequestsTabFragment.java"

# interfaces
.implements Lcom/vk/common/g/VoidF2Int;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/common/g/VoidF2Int<",
        "Lcom/vk/dto/user/RequestUserProfile;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment;


# direct methods
.method constructor <init>(Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment$b;->a:Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/dto/user/RequestUserProfile;Ljava/lang/Boolean;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment$b;->a:Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment;->a(Lcom/vk/dto/user/RequestUserProfile;ZI)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/dto/user/RequestUserProfile;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vtosters/lite/fragments/friends/FriendRequestsTabFragment$b;->a(Lcom/vk/dto/user/RequestUserProfile;Ljava/lang/Boolean;I)V

    return-void
.end method

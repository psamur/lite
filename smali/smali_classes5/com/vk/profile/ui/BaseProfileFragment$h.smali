.class Lcom/vk/profile/ui/BaseProfileFragment$h;
.super Ljava/lang/Object;
.source "BaseProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/profile/ui/BaseProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/profile/ui/BaseProfileFragment;


# direct methods
.method constructor <init>(Lcom/vk/profile/ui/BaseProfileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/profile/ui/BaseProfileFragment$h;->a:Lcom/vk/profile/ui/BaseProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/vtosters/lite/fragments/PostponedPostListFragment$b;

    iget-object v0, p0, Lcom/vk/profile/ui/BaseProfileFragment$h;->a:Lcom/vk/profile/ui/BaseProfileFragment;

    iget v0, v0, Lcom/vk/profile/ui/BaseProfileFragment;->q0:I

    invoke-direct {p1, v0}, Lcom/vtosters/lite/fragments/PostponedPostListFragment$b;-><init>(I)V

    iget-object v0, p0, Lcom/vk/profile/ui/BaseProfileFragment$h;->a:Lcom/vk/profile/ui/BaseProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/navigation/Navigator;->a(Landroid/content/Context;)V

    return-void
.end method

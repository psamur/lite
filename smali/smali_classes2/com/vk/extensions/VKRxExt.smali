.class public final Lcom/vk/extensions/VKRxExt;
.super Ljava/lang/Object;
.source "VKRxExt.kt"


# direct methods
.method public static final a(Lio/reactivex/disposables/Disposable;Landroid/content/Context;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/vtosters/lite/VKActivity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/vtosters/lite/VKActivity;

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/vk/extensions/VKRxExt;->a(Lio/reactivex/disposables/Disposable;Lcom/vtosters/lite/VKActivity;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-object p0
.end method

.method public static final a(Lio/reactivex/disposables/Disposable;Landroidx/fragment/app/FragmentActivity;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->o()V

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/vk/extensions/VKRxExt$a;

    invoke-direct {v1, p0, p1}, Lcom/vk/extensions/VKRxExt$a;-><init>(Lio/reactivex/disposables/Disposable;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object p0
.end method

.method public static final a(Lio/reactivex/disposables/Disposable;Lcom/vk/core/fragments/BaseFragment1;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/vk/core/fragments/BaseFragment1;->b(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static final a(Lio/reactivex/disposables/Disposable;Lcom/vtosters/lite/VKActivity;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/vtosters/lite/VKActivity;->b(Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

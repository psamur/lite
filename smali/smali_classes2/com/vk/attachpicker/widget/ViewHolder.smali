.class public abstract Lcom/vk/attachpicker/widget/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;I)Landroid/view/View;
.end method

.method public a(Landroid/content/Context;Landroid/view/View;IILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "IITT;)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget v0, p0, Lcom/vk/attachpicker/widget/ViewHolder;->a:I

    if-eq v0, p4, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/vk/attachpicker/widget/ViewHolder;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    iput p4, p0, Lcom/vk/attachpicker/widget/ViewHolder;->a:I

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/vk/attachpicker/widget/ViewHolder;->a(Landroid/content/Context;IILjava/lang/Object;)V

    return-object p2
.end method

.method public abstract a(Landroid/content/Context;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IITT;)V"
        }
    .end annotation
.end method

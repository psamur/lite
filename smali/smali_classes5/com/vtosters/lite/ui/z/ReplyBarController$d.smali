.class Lcom/vtosters/lite/ui/z/ReplyBarController$d;
.super Ljava/lang/Object;
.source "ReplyBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vtosters/lite/ui/z/ReplyBarController;-><init>(Landroid/view/View;IZZLcom/vtosters/lite/ui/z/ReplyBarController$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vtosters/lite/ui/z/ReplyBarController$h;

.field final synthetic b:Lcom/vtosters/lite/ui/z/ReplyBarController;


# direct methods
.method constructor <init>(Lcom/vtosters/lite/ui/z/ReplyBarController;Lcom/vtosters/lite/ui/z/ReplyBarController$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vtosters/lite/ui/z/ReplyBarController$d;->b:Lcom/vtosters/lite/ui/z/ReplyBarController;

    iput-object p2, p0, Lcom/vtosters/lite/ui/z/ReplyBarController$d;->a:Lcom/vtosters/lite/ui/z/ReplyBarController$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/vtosters/lite/ui/z/ReplyBarController$d;->b:Lcom/vtosters/lite/ui/z/ReplyBarController;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/vtosters/lite/ui/z/ReplyBarController;->b(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/vtosters/lite/ui/z/ReplyBarController$d;->a:Lcom/vtosters/lite/ui/z/ReplyBarController$h;

    invoke-interface {p1}, Lcom/vtosters/lite/ui/z/ReplyBarController$h;->a()V

    return-void
.end method

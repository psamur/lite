.class public final synthetic Lcom/vtosters/lite/ui/holder/video/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# instance fields
.field private final synthetic a:Lcom/vtosters/lite/ui/holder/video/BaseAutoPlayHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/vtosters/lite/ui/holder/video/BaseAutoPlayHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vtosters/lite/ui/holder/video/a;->a:Lcom/vtosters/lite/ui/holder/video/BaseAutoPlayHolder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vtosters/lite/ui/holder/video/a;->a:Lcom/vtosters/lite/ui/holder/video/BaseAutoPlayHolder;

    invoke-static {v0}, Lcom/vtosters/lite/ui/holder/video/BaseAutoPlayHolder;->c(Lcom/vtosters/lite/ui/holder/video/BaseAutoPlayHolder;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

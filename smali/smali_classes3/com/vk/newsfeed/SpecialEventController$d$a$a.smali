.class final Lcom/vk/newsfeed/SpecialEventController$d$a$a;
.super Ljava/lang/Object;
.source "SpecialEventController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/newsfeed/SpecialEventController$d$a;->a(Lcom/vk/dto/stickers/SpecialEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/vk/newsfeed/SpecialEventController$d$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/newsfeed/SpecialEventController$d$a$a;

    invoke-direct {v0}, Lcom/vk/newsfeed/SpecialEventController$d$a$a;-><init>()V

    sput-object v0, Lcom/vk/newsfeed/SpecialEventController$d$a$a;->INSTANCE:Lcom/vk/newsfeed/SpecialEventController$d$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/vk/newsfeed/SpecialEventController;->INSTANCE:Lcom/vk/newsfeed/SpecialEventController;

    invoke-static {v0}, Lcom/vk/newsfeed/SpecialEventController;->c(Lcom/vk/newsfeed/SpecialEventController;)V

    return-void
.end method

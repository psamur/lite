.class public Lcom/twitter/sdk/android/core/TwitterConfig;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/TwitterConfig$b;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/twitter/sdk/android/core/Logger;

.field final c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final d:Ljava/util/concurrent/ExecutorService;

.field final e:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->b:Lcom/twitter/sdk/android/core/Logger;

    .line 5
    iput-object p3, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 6
    iput-object p4, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->d:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object p5, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->e:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/TwitterConfig$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/twitter/sdk/android/core/TwitterConfig;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V

    return-void
.end method

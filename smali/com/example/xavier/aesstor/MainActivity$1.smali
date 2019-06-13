.class Lcom/example/xavier/aesstor/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/xavier/aesstor/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/xavier/aesstor/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/xavier/aesstor/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/xavier/aesstor/MainActivity;

    .line 35
    iput-object p1, p0, Lcom/example/xavier/aesstor/MainActivity$1;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 39
    return-void
.end method

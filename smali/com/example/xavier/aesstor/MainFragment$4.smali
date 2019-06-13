.class Lcom/example/xavier/aesstor/MainFragment$4;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/xavier/aesstor/MainFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/xavier/aesstor/MainFragment;


# direct methods
.method constructor <init>(Lcom/example/xavier/aesstor/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/xavier/aesstor/MainFragment;

    .line 78
    iput-object p1, p0, Lcom/example/xavier/aesstor/MainFragment$4;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainFragment$4;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/example/xavier/aesstor/MainActivity;

    invoke-virtual {v0}, Lcom/example/xavier/aesstor/MainActivity;->showResetLockScreenFragment()V

    .line 82
    return-void
.end method

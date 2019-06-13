.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 187
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 191
    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$200(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$300(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    .line 198
    return-void

    .line 201
    :cond_1
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;-><init>()V

    .line 203
    .local v0, "fragment":Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 204
    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4$1;

    invoke-direct {v1, p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4$1;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->setAuthListener(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;)V

    .line 220
    return-void

    .line 192
    .end local v0    # "fragment":Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
    :cond_2
    :goto_0
    return-void
.end method

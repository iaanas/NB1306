.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;


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

    .line 276
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$600(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$700(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$802(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$802(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v2}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$900(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v3}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$800(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->checkPin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 288
    .local v0, "isCorrect":Z
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$500(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 289
    if-eqz v0, :cond_1

    .line 290
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$500(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;->onCodeInputSuccessful()V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$500(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;->onPinLoginFailed()V

    .line 293
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    .line 296
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->isClearCodeOnError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/views/PFCodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->clearCode()V
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0    # "isCorrect":Z
    :cond_3
    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_1
    return-void
.end method

.method public onCodeNotCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$600(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$700(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    return-void

    .line 311
    :cond_0
    return-void
.end method

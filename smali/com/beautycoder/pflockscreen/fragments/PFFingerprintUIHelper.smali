.class public Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;
.super Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PFFingerprintUIHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x17
.end annotation


# static fields
.field private static final ERROR_TIMEOUT_MILLIS:J = 0x640L

.field private static final SUCCESS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

.field private mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field private final mErrorTextView:Landroid/widget/TextView;

.field private final mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

.field private final mIcon:Landroid/widget/ImageView;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mSelfCancelled:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;)V
    .locals 1
    .param p1, "fingerprintManager"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "errorTextView"    # Landroid/widget/TextView;
    .param p4, "callback"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    .line 34
    invoke-direct {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    .line 118
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    .line 36
    iput-object p2, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    .line 37
    iput-object p3, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 38
    iput-object p4, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 18
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 18
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 18
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 110
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/beautycoder/pflockscreen/R$drawable;->ic_fingerprint_error_pf:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/beautycoder/pflockscreen/R$color;->warning_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method


# virtual methods
.method public isFingerprintAuthAvailable()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 71
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mSelfCancelled:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0, p2}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->showError(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$1;

    invoke-direct {v1, p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$1;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/beautycoder/pflockscreen/R$string;->fingerprint_not_recognized_pf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->showError(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 84
    invoke-direct {p0, p2}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->showError(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 4
    .param p1, "result"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    .line 95
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/beautycoder/pflockscreen/R$drawable;->ic_fingerprint_success_pf:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 98
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/beautycoder/pflockscreen/R$color;->success_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 100
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/beautycoder/pflockscreen/R$string;->fingerprint_success_pf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$2;

    invoke-direct {v1, p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$2;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method public startListening(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .locals 7
    .param p1, "cryptoObject"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 49
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->isFingerprintAuthAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v0}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mSelfCancelled:Z

    .line 56
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    .line 58
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/beautycoder/pflockscreen/R$drawable;->ic_fp_40px_pf:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mSelfCancelled:Z

    .line 64
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 67
    :cond_0
    return-void
.end method

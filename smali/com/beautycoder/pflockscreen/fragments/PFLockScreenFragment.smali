.class public Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.super Landroid/support/v4/app/Fragment;
.source "PFLockScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "FingerprintDialogFragment"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCode:Ljava/lang/String;

.field private mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

.field private mCodeListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

.field private mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

.field private mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

.field private mDeleteButton:Landroid/view/View;

.field private mEncodedPinCode:Ljava/lang/String;

.field private mFingerprintButton:Landroid/view/View;

.field private mFingerprintHardwareDetected:Z

.field private mIsCreateMode:Z

.field private mLeftButton:Landroid/widget/TextView;

.field private mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

.field private mNextButton:Landroid/widget/Button;

.field private mOnDeleteButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOnDeleteButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

.field private mOnKeyClickListener:Landroid/view/View$OnClickListener;

.field private mOnNextButtonClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private mUseFingerPrint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintHardwareDetected:Z

    .line 49
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCode:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mEncodedPinCode:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$1;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    .line 170
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$2;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$2;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$3;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$3;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 187
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$4;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

    .line 276
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$6;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    .line 315
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$7;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$7;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnNextButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/views/PFCodeView;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->configureRightButton(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->errorAction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->deleteEncodeKey()V

    return-void
.end method

.method static synthetic access$200(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintApiAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintsExists(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->showNoFingerprintDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 35
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mEncodedPinCode:Ljava/lang/String;

    return-object v0
.end method

.method private applyConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V
    .locals 4
    .param p1, "configuration"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    .line 107
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/beautycoder/pflockscreen/R$id;->title_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, "titleView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getLeftButton()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getLeftButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getOnLeftButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :goto_0
    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getNextButton()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getNextButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->isUseFingerprint()Z

    move-result v1

    iput-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    .line 124
    iget-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getMode()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v3, 0x1

    nop

    :cond_4
    iput-boolean v3, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    .line 130
    iget-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_5
    iget-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    if-eqz v1, :cond_6

    .line 136
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnNextButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 138
    :cond_6
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-virtual {v2}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getCodeLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setCodeLength(I)V

    .line 141
    return-void

    .line 108
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_7
    :goto_2
    return-void
.end method

.method private configureRightButton(I)V
    .locals 3
    .param p1, "codeLength"    # I

    .line 224
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 225
    if-lez p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 233
    :cond_1
    if-lez p1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    return-void

    .line 240
    :cond_2
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintHardwareDetected:Z

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    return-void
.end method

.method private deleteEncodeKey()V
    .locals 3

    .line 336
    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->delete()V
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 339
    sget-object v1, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->TAG:Ljava/lang/String;

    const-string v2, "Can not delete the alias"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_0
    return-void
.end method

.method private errorAction()V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 345
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 346
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/beautycoder/pflockscreen/R$anim;->shake_pf:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 349
    .local v1, "animShake":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    invoke-virtual {v2, v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    return-void
.end method

.method private initKeyViews(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .line 144
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_5:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_6:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_7:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_8:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lcom/beautycoder/pflockscreen/R$id;->button_9:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method private isFingerprintApiAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 253
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method private isFingerprintsExists(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 257
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method private showNoFingerprintDialog()V
    .locals 3

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/beautycoder/pflockscreen/R$string;->no_fingerprints_title_pf:I

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/beautycoder/pflockscreen/R$string;->no_fingerprints_message_pf:I

    .line 264
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/beautycoder/pflockscreen/R$string;->cancel_pf:I

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/beautycoder/pflockscreen/R$string;->settings_pf:I

    new-instance v2, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$5;

    invoke-direct {v2, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$5;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 273
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    sget v0, Lcom/beautycoder/pflockscreen/R$layout;->fragment_lock_screen_pf:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/beautycoder/pflockscreen/R$id;->button_finger_print:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    .line 66
    sget v1, Lcom/beautycoder/pflockscreen/R$id;->button_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    .line 68
    sget v1, Lcom/beautycoder/pflockscreen/R$id;->button_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    .line 69
    sget v1, Lcom/beautycoder/pflockscreen/R$id;->button_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    .line 71
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v1, Lcom/beautycoder/pflockscreen/R$id;->code_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/beautycoder/pflockscreen/views/PFCodeView;

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    .line 76
    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->initKeyViews(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    invoke-virtual {v1, v2}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setListener(Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;)V

    .line 80
    iget-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintApiAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintHardwareDetected:Z

    .line 86
    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mRootView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-direct {p0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->applyConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V

    .line 89
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->isAutoShowFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintApiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintsExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 98
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 99
    return-void
.end method

.method public setCodeCreateListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    .line 380
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    .line 381
    return-void
.end method

.method public setConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    .line 102
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    .line 103
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->applyConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V

    .line 104
    return-void
.end method

.method public setEncodedPinCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodedPinCode"    # Ljava/lang/String;

    .line 398
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mEncodedPinCode:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setLoginListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    .line 389
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    .line 390
    return-void
.end method

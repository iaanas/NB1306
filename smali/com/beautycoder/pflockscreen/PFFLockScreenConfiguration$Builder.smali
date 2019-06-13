.class public Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
.super Ljava/lang/Object;
.source "PFFLockScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoShowFingerprint:Z

.field private mClearCodeOnError:Z

.field private mCodeLength:I

.field private mLeftButton:Ljava/lang/String;

.field private mMode:I

.field private mNextButton:Ljava/lang/String;

.field private mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mUseFingerprint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mLeftButton:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mNextButton:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mUseFingerprint:Z

    .line 81
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mAutoShowFingerprint:Z

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mTitle:Ljava/lang/String;

    .line 83
    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mMode:I

    .line 84
    const/4 v1, 0x4

    iput v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mCodeLength:I

    .line 85
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mClearCodeOnError:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/beautycoder/pflockscreen/R$string;->lock_screen_title_pf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mTitle:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mLeftButton:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mNextButton:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mUseFingerprint:Z

    return v0
.end method

.method static synthetic access$300(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mAutoShowFingerprint:Z

    return v0
.end method

.method static synthetic access$400(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mCodeLength:I

    return v0
.end method

.method static synthetic access$800(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 75
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mClearCodeOnError:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
    .locals 2

    .line 134
    new-instance v0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;-><init>(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$1;)V

    return-object v0
.end method

.method public setAutoShowFingerprint(Z)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "autoShowFingerprint"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mAutoShowFingerprint:Z

    .line 115
    return-object p0
.end method

.method public setClearCodeOnError(Z)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "clearCodeOnError"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mClearCodeOnError:Z

    .line 130
    return-object p0
.end method

.method public setCodeLength(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "codeLength"    # I

    .line 124
    iput p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mCodeLength:I

    .line 125
    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "leftButton"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 98
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mLeftButton:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 100
    return-object p0
.end method

.method public setMode(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "mode"    # I

    .line 119
    iput p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mMode:I

    .line 120
    return-object p0
.end method

.method public setNextButton(Ljava/lang/String;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "nextButton"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mNextButton:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mTitle:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setUseFingerprint(Z)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "useFingerprint"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mUseFingerprint:Z

    .line 110
    return-object p0
.end method

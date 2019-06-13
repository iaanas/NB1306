.class public Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
.super Ljava/lang/Object;
.source "PFFLockScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$PFLockScreenMode;,
        Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final MODE_AUTH:I = 0x1

.field public static final MODE_CREATE:I


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
.method private constructor <init>(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mLeftButton:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mNextButton:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mUseFingerprint:Z

    .line 20
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mAutoShowFingerprint:Z

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mTitle:Ljava/lang/String;

    .line 22
    const/4 v1, 0x1

    iput v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mMode:I

    .line 23
    const/4 v1, 0x4

    iput v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mCodeLength:I

    .line 24
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mClearCodeOnError:Z

    .line 27
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$000(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mLeftButton:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$100(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mNextButton:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$200(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mUseFingerprint:Z

    .line 30
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$300(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mAutoShowFingerprint:Z

    .line 31
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$400(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mTitle:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$500(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 33
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$600(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mMode:I

    .line 34
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$700(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mCodeLength:I

    .line 35
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$800(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mClearCodeOnError:Z

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .param p2, "x1"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;-><init>(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getCodeLength()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mCodeLength:I

    return v0
.end method

.method public getLeftButton()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mLeftButton:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mMode:I

    return v0
.end method

.method public getNextButton()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mNextButton:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLeftButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoShowFingerprint()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mAutoShowFingerprint:Z

    return v0
.end method

.method public isClearCodeOnError()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mClearCodeOnError:Z

    return v0
.end method

.method public isUseFingerprint()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mUseFingerprint:Z

    return v0
.end method

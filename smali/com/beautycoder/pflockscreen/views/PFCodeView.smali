.class public Lcom/beautycoder/pflockscreen/views/PFCodeView;
.super Landroid/widget/LinearLayout;
.source "PFCodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CODE_LENGTH:I = 0x4


# instance fields
.field private mCode:Ljava/lang/String;

.field private mCodeLength:I

.field mCodeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 31
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 36
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 41
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/beautycoder/pflockscreen/R$layout;->view_code_pf_lockscreen:I

    invoke-static {v0, v1, p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setUpCodeViews()V

    .line 47
    return-void
.end method

.method private setUpCodeViews()V
    .locals 7

    .line 55
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->removeAllViews()V

    .line 56
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    if-ge v1, v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 61
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/beautycoder/pflockscreen/R$layout;->view_pf_code_checkbox:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 63
    .local v3, "view":Landroid/widget/CheckBox;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/beautycoder/pflockscreen/R$dimen;->code_fp_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 66
    .local v5, "margin":I
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->addView(Landroid/view/View;)V

    .line 70
    iget-object v6, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/widget/CheckBox;
    .end local v4    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "margin":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeNotCompleted(Ljava/lang/String;)V

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method public clearCode()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeNotCompleted(Ljava/lang/String;)V

    .line 105
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 107
    .local v1, "codeView":Landroid/widget/CheckBox;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    .end local v1    # "codeView":Landroid/widget/CheckBox;
    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public delete()I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeNotCompleted(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 98
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInputCodeLength()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public input(Ljava/lang/String;)I
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeCompleted(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public setCodeLength(I)V
    .locals 0
    .param p1, "codeLength"    # I

    .line 50
    iput p1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 51
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setUpCodeViews()V

    .line 52
    return-void
.end method

.method public setListener(Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    .line 120
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    .line 121
    return-void
.end method

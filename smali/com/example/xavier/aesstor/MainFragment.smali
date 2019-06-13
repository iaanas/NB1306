.class public Lcom/example/xavier/aesstor/MainFragment;
.super Landroid/support/v4/app/ListFragment;
.source "MainFragment.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method private checkFileStorage()[Ljava/lang/String;
    .locals 4

    .line 97
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/crypt/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "cryptDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/decrypt/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "encryptDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/example/xavier/aesstor/MainFragment;->getFilesInStorage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public native decryptFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native getFilesInStorage(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainFragment;->checkFileStorage()[Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "data":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x109000f

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 29
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/example/xavier/aesstor/MainFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 32
    .local v2, "encryptButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/example/xavier/aesstor/MainFragment$1;

    invoke-direct {v3, p0}, Lcom/example/xavier/aesstor/MainFragment$1;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f070043

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 50
    .local v3, "decryptButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/example/xavier/aesstor/MainFragment$2;

    invoke-direct {v4, p0}, Lcom/example/xavier/aesstor/MainFragment$2;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f070045

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 69
    .local v4, "deleteAllDecryptedButton":Landroid/widget/ImageButton;
    new-instance v5, Lcom/example/xavier/aesstor/MainFragment$3;

    invoke-direct {v5, p0}, Lcom/example/xavier/aesstor/MainFragment$3;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f070078

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 78
    .local v5, "resetPasswdButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/example/xavier/aesstor/MainFragment$4;

    invoke-direct {v6, p0}, Lcom/example/xavier/aesstor/MainFragment$4;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    const v0, 0x7f09001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 92
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "item":Ljava/lang/String;
    return-void
.end method

.method public native removeAllDecryptedFiles(Ljava/lang/String;)I
.end method

.method public native removeDecryptedCopy(Ljava/lang/String;Ljava/lang/String;)I
.end method

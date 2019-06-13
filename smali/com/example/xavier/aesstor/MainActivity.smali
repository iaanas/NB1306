.class public Lcom/example/xavier/aesstor/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

.field private mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/example/xavier/aesstor/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/example/xavier/aesstor/MainActivity$2;-><init>(Lcom/example/xavier/aesstor/MainActivity;)V

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivity;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    .line 74
    new-instance v0, Lcom/example/xavier/aesstor/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/example/xavier/aesstor/MainActivity$3;-><init>(Lcom/example/xavier/aesstor/MainActivity;)V

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivity;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    return-void
.end method

.method static synthetic access$000(Lcom/example/xavier/aesstor/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/example/xavier/aesstor/MainActivity;

    .line 16
    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainActivity;->showMainFragment()V

    return-void
.end method

.method private showLockScreenFragment()V
    .locals 6

    .line 101
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->isPinCodeEncryptionKeyExist()Z

    move-result v1

    .line 102
    .local v1, "isPinExist":Z
    new-instance v2, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    invoke-direct {v2, p0}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const-string v3, "Unlock AES Store with your PIN"

    goto :goto_0

    :cond_0
    const-string v3, "Create Code"

    .line 103
    :goto_0
    invoke-virtual {v2, v3}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->setTitle(Ljava/lang/String;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x6

    .line 104
    invoke-virtual {v2, v3}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->setCodeLength(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    move-result-object v2

    .line 105
    .local v2, "builder":Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    new-instance v3, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {v3}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;-><init>()V

    .line 107
    .local v3, "fragment":Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->setMode(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-static {p0}, Lcom/example/xavier/aesstor/PreferencesSettings;->getCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setEncodedPinCode(Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/example/xavier/aesstor/MainActivity;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setLoginListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;)V

    .line 115
    :cond_2
    invoke-virtual {v2}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->build()Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V

    .line 116
    iget-object v4, p0, Lcom/example/xavier/aesstor/MainActivity;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setCodeCreateListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f07003d

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "isPinExist":Z
    .end local v2    # "builder":Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .end local v3    # "fragment":Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    nop

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 121
    const-string v2, "Can not get pin code info"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method

.method private showMainFragment()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/example/xavier/aesstor/MainFragment;

    invoke-direct {v1}, Lcom/example/xavier/aesstor/MainFragment;-><init>()V

    const v2, 0x7f07003d

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 138
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 23
    .local v0, "apkPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 25
    .local v1, "containerJar":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 26
    const-string v2, "classes.dex"

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 27
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v3

    .line 29
    .local v3, "current":J
    const v5, 0x7f0b0037

    invoke-virtual {p0, v5}, Lcom/example/xavier/aesstor/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 30
    .local v5, "original":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_0

    .line 32
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v8, "Error"

    .line 33
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Some error during loading process"

    .line 34
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    new-instance v9, Lcom/example/xavier/aesstor/MainActivity$1;

    invoke-direct {v9, p0}, Lcom/example/xavier/aesstor/MainActivity$1;-><init>(Lcom/example/xavier/aesstor/MainActivity;)V

    .line 35
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    .line 41
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    .end local v3    # "current":J
    .end local v5    # "original":J
    :cond_0
    if-eqz v1, :cond_1

    .line 54
    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :goto_0
    goto :goto_1

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 46
    :catch_1
    move-exception v2

    .line 48
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 54
    :try_start_3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/example/xavier/aesstor/MainActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainActivity;->showLockScreenFragment()V

    .line 62
    return-void

    .line 52
    :goto_2
    if-eqz v1, :cond_2

    .line 54
    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 57
    goto :goto_3

    .line 55
    :catch_2
    move-exception v3

    .line 56
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method

.method public showResetLockScreenFragment()V
    .locals 3

    .line 128
    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->delete()V

    .line 129
    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainActivity;->showLockScreenFragment()V
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 132
    const-string v1, "Can not get pin code info"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 134
    .end local v0    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_0
    return-void
.end method

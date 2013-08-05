.class public Landroid/content/res/ThemeProperties;
.super Ljava/lang/Object;
.source "ThemeProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentControlTheme()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 27
    .local v0, index:I
    return v0
.end method

.method public static getCurrentThemeButtonIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.button"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 69
    :cond_0
    return v1

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeCheckBoxIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 77
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.checkbox"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 83
    :cond_0
    return v1

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeDialogIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.dialog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 126
    :cond_0
    return v1

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeIndex()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 40
    .local v0, index:I
    return v0
.end method

.method public static getCurrentThemeRadioIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 91
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.radio"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 98
    :cond_0
    return v1

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSectionLineIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 176
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.sectionline"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 182
    :cond_0
    return v1

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSeekbarIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 148
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.seekbar"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 154
    :cond_0
    return v1

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSwitchIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 134
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.switch"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 140
    :cond_0
    return v1

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTabBackgroundIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 162
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.tab"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 168
    :cond_0
    return v1

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTitleBackgroundIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.titleback"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 112
    :cond_0
    return v1

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTitleColorIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, index:I
    if-eqz p0, :cond_0

    .line 49
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.titlecolor"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 55
    :cond_0
    return v1

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setControlTheme(I)V
    .locals 2
    .parameter "controltheme"

    .prologue
    .line 187
    if-gtz p0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v0, "persist.sys.skin.control"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentThemeButtonIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 212
    move v0, p0

    .line 213
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.button"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static setCurrentThemeCheckBoxIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 221
    move v0, p0

    .line 222
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.checkbox"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static setCurrentThemeDialogIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 248
    move v0, p0

    .line 249
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 252
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.dialog"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public static setCurrentThemeRadioIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 230
    move v0, p0

    .line 231
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.radio"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public static setCurrentThemeSectionLineIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 284
    move v0, p0

    .line 285
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 288
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.sectionline"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static setCurrentThemeSeekbarIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 266
    move v0, p0

    .line 267
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.seekbar"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static setCurrentThemeSwitchIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 257
    move v0, p0

    .line 258
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.switch"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static setCurrentThemeTabBackgroundIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 275
    move v0, p0

    .line 276
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 279
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.tab"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static setCurrentThemeTitleBackgroundIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 239
    move v0, p0

    .line 240
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.titleback"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static setCurrentThemeTitleColorIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    .line 203
    move v0, p0

    .line 204
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.titlecolor"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static setThemeId(I)V
    .locals 2
    .parameter "theme_id"

    .prologue
    .line 195
    if-gtz p0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string/jumbo v0, "persist.sys.skin.theme"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

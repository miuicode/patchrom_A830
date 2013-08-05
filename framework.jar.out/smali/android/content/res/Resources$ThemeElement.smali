.class public Landroid/content/res/Resources$ThemeElement;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeElement"
.end annotation


# static fields
.field public static final BUTTON:I = 0x0

.field public static final CHECKBOX:I = 0x1

.field public static final RADIOBUTTON:I = 0x2

.field public static final SECTION:I = 0x4

.field public static final TAB:I = 0x5

.field public static final TITLE_BACKGROUND:I = 0x3


# instance fields
.field public ButonColor:Landroid/content/res/ColorStateList;

.field public buttonresid:[I

.field public checkboxresid:[I

.field public mBottomBar:Landroid/graphics/drawable/Drawable;

.field public mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field public mDialogBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$DialogRes;",
            ">;"
        }
    .end annotation
.end field

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mR:Landroid/content/res/Resources;

.field public mRadioButonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mSectionLine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mSeekBarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$SeekBarRes;",
            ">;"
        }
    .end annotation
.end field

.field public mSwitchButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$SwitchRes;",
            ">;"
        }
    .end annotation
.end field

.field public mTabBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$TabRes;",
            ">;"
        }
    .end annotation
.end field

.field public mTitleBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$TitleColor;",
            ">;"
        }
    .end annotation
.end field

.field public nButton_Cur_sel:I

.field public nCheckBox_Cur_sel:I

.field public nDialogBackground_Cur_sel:I

.field public nRadioButton_Cur_sel:I

.field public nSectionLine_Cur_sel:I

.field public nSeekBar_Cur_sel:I

.field public nSwitchButton_Cur_sel:I

.field public nTabBackground_Cur_sel:I

.field public nTitleBackground_Cur_sel:I

.field public nTitle_Cur_sel:I

.field public radioresid:[I

.field public sectionlineresid:[I

.field public strThemeName:Ljava/lang/String;

.field public tabresid:[I

.field final synthetic this$0:Landroid/content/res/Resources;

.field public titlebarkresid:[I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3615
    iput-object p1, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3626
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    .line 3628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    .line 3629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mButtonList:Ljava/util/ArrayList;

    .line 3630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mCheckBoxList:Ljava/util/ArrayList;

    .line 3631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    .line 3632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mRadioButonList:Ljava/util/ArrayList;

    .line 3633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    .line 3634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mTitleBackground:Ljava/util/ArrayList;

    .line 3635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mSectionLine:Ljava/util/ArrayList;

    .line 3636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mTabBackground:Ljava/util/ArrayList;

    .line 3637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    .line 3640
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3641
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 3642
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mBottomBar:Landroid/graphics/drawable/Drawable;

    .line 3643
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->ButonColor:Landroid/content/res/ColorStateList;

    .line 3645
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nTitle_Cur_sel:I

    .line 3646
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nButton_Cur_sel:I

    .line 3647
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nCheckBox_Cur_sel:I

    .line 3648
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nSwitchButton_Cur_sel:I

    .line 3649
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nRadioButton_Cur_sel:I

    .line 3650
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nSeekBar_Cur_sel:I

    .line 3651
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nTitleBackground_Cur_sel:I

    .line 3652
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nSectionLine_Cur_sel:I

    .line 3653
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nTabBackground_Cur_sel:I

    .line 3654
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nDialogBackground_Cur_sel:I

    .line 3656
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    .line 3657
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    .line 3658
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    .line 3659
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    .line 3660
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    .line 3661
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->tabresid:[I

    return-void
.end method


# virtual methods
.method public generateDialog(II)[Landroid/content/res/Resources$DialogRes;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3697
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3698
    new-array v1, p2, [Landroid/content/res/Resources$DialogRes;

    .line 3699
    .local v1, ret:[Landroid/content/res/Resources$DialogRes;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3700
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$DialogRes;

    iget v2, v2, Landroid/content/res/Resources$DialogRes;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDialogRes(I)Landroid/content/res/Resources$DialogRes;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3704
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$DialogRes;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public generateDrawable(III)[Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "nCur"
    .parameter "nType"
    .parameter "ncount"

    .prologue
    const/4 v4, 0x0

    .line 3708
    if-ltz p2, :cond_1

    const/4 v3, 0x5

    if-gt p2, v3, :cond_1

    if-lez p3, :cond_1

    if-ltz p1, :cond_1

    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v3, :cond_1

    .line 3709
    const/4 v1, 0x0

    .line 3710
    .local v1, pInt:[I
    packed-switch p2, :pswitch_data_0

    .line 3773
    :cond_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-le v3, p1, :cond_1

    if-lez p1, :cond_1

    .line 3774
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3775
    .local v2, ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 3776
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    aget v4, v1, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3712
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    .line 3713
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3714
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3715
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 3716
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x3020038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3722
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    .line 3723
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3724
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3725
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, p3, :cond_2

    .line 3726
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x3020016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3725
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3732
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    .line 3733
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3734
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3735
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p3, :cond_2

    .line 3736
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x302003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3735
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3742
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    .line 3743
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3744
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3745
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, p3, :cond_2

    .line 3746
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x302000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3745
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3752
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_4
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    .line 3753
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3754
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3755
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    if-ge v0, p3, :cond_2

    .line 3756
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x3020083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3755
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3762
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_5
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->tabresid:[I

    .line 3763
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3764
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3765
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    if-ge v0, p3, :cond_2

    .line 3766
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x3020108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3765
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3781
    .end local v0           #i:I
    .end local v1           #pInt:[I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2

    .line 3710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public generateSeekBar(II)[Landroid/content/res/Resources$SeekBarRes;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3686
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3687
    new-array v1, p2, [Landroid/content/res/Resources$SeekBarRes;

    .line 3688
    .local v1, ret:[Landroid/content/res/Resources$SeekBarRes;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3689
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$SeekBarRes;

    iget v2, v2, Landroid/content/res/Resources$SeekBarRes;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getSeekBar(I)Landroid/content/res/Resources$SeekBarRes;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3693
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$SeekBarRes;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public generateSwitch(II)[Landroid/content/res/Resources$SwitchRes;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3675
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3676
    new-array v1, p2, [Landroid/content/res/Resources$SwitchRes;

    .line 3677
    .local v1, ret:[Landroid/content/res/Resources$SwitchRes;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3678
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$SwitchRes;

    iget v2, v2, Landroid/content/res/Resources$SwitchRes;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getSwitchRes(I)Landroid/content/res/Resources$SwitchRes;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3682
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$SwitchRes;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public generateTitleColor(II)[Landroid/content/res/Resources$TitleColor;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3664
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3665
    new-array v1, p2, [Landroid/content/res/Resources$TitleColor;

    .line 3666
    .local v1, ret:[Landroid/content/res/Resources$TitleColor;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3667
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$TitleColor;

    iget v2, v2, Landroid/content/res/Resources$TitleColor;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getTitleColors(I)Landroid/content/res/Resources$TitleColor;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3671
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$TitleColor;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

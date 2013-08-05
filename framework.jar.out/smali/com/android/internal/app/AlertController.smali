.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field static list_divider_res:I

.field static list_item_textcolor:I


# instance fields
.field private bUseDefaultTheme:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    sput v0, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 136
    sput v0, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 106
    iput v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 122
    iput v2, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 140
    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->bUseDefaultTheme:Z

    .line 142
    new-instance v2, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 196
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 198
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 199
    new-instance v2, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v2, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 201
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v4, 0x101005d

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, 0x1090023

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 207
    const/16 v2, 0xb

    const v3, 0x10900c3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 210
    const/16 v2, 0xc

    const v3, 0x1090013

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 213
    const/16 v2, 0xd

    const v3, 0x1090012

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 216
    const/16 v2, 0xe

    const v3, 0x1090011

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->isCts()Z

    move-result v1

    .line 221
    .local v1, bCts:Z
    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    const v3, 0x1090024

    if-ne v2, v3, :cond_0

    .line 222
    const v2, 0x109007b

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 224
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->bUseDefaultTheme:Z

    .line 225
    sput v5, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 226
    sput v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    .line 227
    sget v2, Lcom/android/internal/app/AlertController;->list_divider_res:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v2

    sput v2, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 228
    sget v2, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v2

    sput v2, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    :goto_0
    return v2

    .line 239
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 240
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 243
    check-cast v1, Landroid/view/ViewGroup;

    .line 244
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 245
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 246
    add-int/lit8 v0, v0, -0x1

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 248
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 253
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 652
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 653
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 654
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 655
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102025d

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 657
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 660
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102025e

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 661
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 662
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :cond_1
    return-void
.end method

.method private invertDailogResource(I)I
    .locals 2
    .parameter "nres"

    .prologue
    .line 668
    move v0, p1

    .line 669
    .local v0, nret:I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isDefaultPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    sparse-switch p1, :sswitch_data_0

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 672
    :sswitch_0
    const v0, 0x108046a

    .line 673
    goto :goto_0

    .line 675
    :sswitch_1
    const v0, 0x1080472

    .line 676
    goto :goto_0

    .line 678
    :sswitch_2
    const v0, 0x1080467

    .line 679
    goto :goto_0

    .line 681
    :sswitch_3
    const v0, 0x1080464

    .line 682
    goto :goto_0

    .line 684
    :sswitch_4
    const v0, 0x108046b

    .line 685
    goto :goto_0

    .line 687
    :sswitch_5
    const v0, 0x1080473

    .line 688
    goto :goto_0

    .line 690
    :sswitch_6
    const v0, 0x1080468

    .line 691
    goto :goto_0

    .line 693
    :sswitch_7
    const v0, 0x1080465

    .line 694
    goto :goto_0

    .line 696
    :sswitch_8
    const v0, 0x1080225

    .line 697
    goto :goto_0

    .line 699
    :sswitch_9
    const v0, 0x1080230

    .line 700
    goto :goto_0

    .line 702
    :sswitch_a
    const v0, 0x108022e

    .line 703
    goto :goto_0

    .line 705
    :sswitch_b
    const v0, 0x1080220

    .line 706
    goto :goto_0

    .line 708
    :sswitch_c
    const v0, 0x1080224

    .line 709
    goto :goto_0

    .line 711
    :sswitch_d
    const v0, 0x108022f

    .line 712
    goto :goto_0

    .line 714
    :sswitch_e
    const v0, 0x108022d

    .line 715
    goto :goto_0

    .line 717
    :sswitch_f
    const v0, 0x108021f

    .line 718
    goto :goto_0

    .line 720
    :sswitch_10
    const v0, 0x1080234

    .line 721
    goto :goto_0

    .line 723
    :sswitch_11
    const v0, 0x1080233

    .line 724
    goto :goto_0

    .line 726
    :sswitch_12
    const v0, 0x1080222

    .line 727
    goto :goto_0

    .line 729
    :sswitch_13
    const v0, 0x1080221

    .line 730
    goto :goto_0

    .line 732
    :sswitch_14
    const v0, 0x1060071

    .line 733
    goto :goto_0

    .line 735
    :sswitch_15
    const v0, 0x1060072

    .line 736
    goto :goto_0

    .line 738
    :sswitch_16
    const v0, 0x1080012

    .line 739
    goto :goto_0

    .line 741
    :sswitch_17
    const v0, 0x1080014

    .line 742
    goto :goto_0

    .line 744
    :sswitch_18
    const v0, 0x10803c6

    .line 745
    goto :goto_0

    .line 747
    :sswitch_19
    const v0, 0x10803c5

    goto :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x1060071 -> :sswitch_15
        0x1060072 -> :sswitch_14
        0x1080012 -> :sswitch_17
        0x1080014 -> :sswitch_16
        0x108021f -> :sswitch_b
        0x1080220 -> :sswitch_f
        0x1080221 -> :sswitch_12
        0x1080222 -> :sswitch_13
        0x1080224 -> :sswitch_8
        0x1080225 -> :sswitch_c
        0x108022d -> :sswitch_a
        0x108022e -> :sswitch_e
        0x108022f -> :sswitch_9
        0x1080230 -> :sswitch_d
        0x1080233 -> :sswitch_10
        0x1080234 -> :sswitch_11
        0x10803c5 -> :sswitch_18
        0x10803c6 -> :sswitch_19
        0x1080464 -> :sswitch_7
        0x1080465 -> :sswitch_3
        0x1080467 -> :sswitch_6
        0x1080468 -> :sswitch_2
        0x108046a -> :sswitch_4
        0x108046b -> :sswitch_0
        0x1080472 -> :sswitch_5
        0x1080473 -> :sswitch_1
    .end sparse-switch
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 29
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 760
    const/16 v26, 0x0

    const v27, 0x108046b

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 762
    .local v11, fullDark:I
    const/16 v26, 0x1

    const v27, 0x1080473

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    .line 764
    .local v23, topDark:I
    const/16 v26, 0x2

    const v27, 0x1080468

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 766
    .local v8, centerDark:I
    const/16 v26, 0x3

    const v27, 0x1080465

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 768
    .local v5, bottomDark:I
    const/16 v26, 0x4

    const v27, 0x108046a

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 770
    .local v10, fullBright:I
    const/16 v26, 0x5

    const v27, 0x1080472

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    .line 772
    .local v22, topBright:I
    const/16 v26, 0x6

    const v27, 0x1080467

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 774
    .local v7, centerBright:I
    const/16 v26, 0x7

    const v27, 0x1080464

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 776
    .local v4, bottomBright:I
    const/16 v26, 0x8

    const v27, 0x1080466

    move-object/from16 v0, p5

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 780
    .local v6, bottomMedium:I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v11

    .line 781
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v23

    .line 782
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v8

    .line 783
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v5

    .line 784
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v10

    .line 785
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v22

    .line 786
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v7

    .line 787
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v4

    .line 788
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v6

    .line 790
    const/4 v14, 0x1

    .line 791
    .local v14, islight:Z
    const/4 v13, 0x1

    .line 792
    .local v13, isDefault:Z
    const v26, 0x108022f

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 793
    const/4 v14, 0x0

    .line 794
    const/4 v13, 0x0

    .line 799
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 800
    .local v3, bUse_control_theme:Z
    const/16 v18, 0x0

    .line 801
    .local v18, nButtonPanel_background_res:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->isCts()Z

    move-result v26

    if-nez v26, :cond_4

    if-nez v13, :cond_4

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Landroid/content/res/Resources;->getThemeDialogBackground(Landroid/content/Context;Z)[I

    move-result-object v20

    .line 803
    .local v20, res:[I
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_4

    .line 804
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_4

    .line 805
    aget v26, v20, v12

    if-gtz v26, :cond_3

    .line 804
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 795
    .end local v3           #bUse_control_theme:Z
    .end local v12           #i:I
    .end local v18           #nButtonPanel_background_res:I
    .end local v20           #res:[I
    :cond_2
    const v26, 0x1080230

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 796
    const/4 v14, 0x1

    .line 797
    const/4 v13, 0x0

    goto :goto_0

    .line 807
    .restart local v3       #bUse_control_theme:Z
    .restart local v12       #i:I
    .restart local v18       #nButtonPanel_background_res:I
    .restart local v20       #res:[I
    :cond_3
    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 809
    :pswitch_0
    aget v23, v20, v12

    .line 810
    aget v22, v20, v12

    .line 811
    const/4 v3, 0x1

    .line 813
    goto :goto_2

    .line 815
    :pswitch_1
    aget v8, v20, v12

    .line 816
    aget v7, v20, v12

    .line 817
    const/4 v3, 0x1

    .line 819
    goto :goto_2

    .line 821
    :pswitch_2
    aget v5, v20, v12

    .line 822
    aget v4, v20, v12

    .line 823
    const/4 v3, 0x1

    .line 825
    goto :goto_2

    .line 827
    :pswitch_3
    aget v11, v20, v12

    .line 828
    aget v10, v20, v12

    .line 829
    const/4 v3, 0x1

    .line 831
    goto :goto_2

    .line 833
    :pswitch_4
    if-eqz v3, :cond_1

    .line 834
    aget v18, v20, v12

    goto :goto_2

    .line 879
    .end local v12           #i:I
    .end local v20           #res:[I
    :cond_4
    if-eqz v3, :cond_6

    .line 880
    const/4 v9, 0x0

    .line 881
    .local v9, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 882
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, 0x102025b

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 887
    :goto_3
    if-eqz v9, :cond_6

    .line 888
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 902
    .end local v9           #divider:Landroid/view/View;
    :cond_6
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v25, v0

    .line 903
    .local v25, views:[Landroid/view/View;
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 904
    .local v17, light:[Z
    const/16 v16, 0x0

    .line 905
    .local v16, lastView:Landroid/view/View;
    const/4 v15, 0x0

    .line 907
    .local v15, lastLight:Z
    const/16 v19, 0x0

    .line 908
    .local v19, pos:I
    if-eqz p6, :cond_7

    .line 909
    aput-object p1, v25, v19

    .line 910
    const/16 v26, 0x0

    aput-boolean v26, v17, v19

    .line 911
    add-int/lit8 v19, v19, 0x1

    .line 919
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 p2, 0x0

    .end local p2
    :cond_8
    aput-object p2, v25, v19

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    const/16 v26, 0x1

    :goto_4
    aput-boolean v26, v17, v19

    .line 922
    add-int/lit8 v19, v19, 0x1

    .line 923
    if-eqz p3, :cond_9

    .line 924
    aput-object p3, v25, v19

    .line 925
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v26, v0

    aput-boolean v26, v17, v19

    .line 926
    add-int/lit8 v19, v19, 0x1

    .line 928
    :cond_9
    if-eqz p4, :cond_a

    .line 929
    aput-object p7, v25, v19

    .line 930
    const/16 v26, 0x1

    aput-boolean v26, v17, v19

    .line 933
    :cond_a
    const/16 v21, 0x0

    .line 934
    .local v21, setView:Z
    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 935
    aget-object v24, v25, v19

    .line 936
    .local v24, v:Landroid/view/View;
    if-nez v24, :cond_d

    .line 934
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 884
    .end local v15           #lastLight:Z
    .end local v16           #lastView:Landroid/view/View;
    .end local v17           #light:[Z
    .end local v19           #pos:I
    .end local v21           #setView:Z
    .end local v24           #v:Landroid/view/View;
    .end local v25           #views:[Landroid/view/View;
    .restart local v9       #divider:Landroid/view/View;
    .restart local p2
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, 0x1020262

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    .line 921
    .end local v9           #divider:Landroid/view/View;
    .end local p2
    .restart local v15       #lastLight:Z
    .restart local v16       #lastView:Landroid/view/View;
    .restart local v17       #light:[Z
    .restart local v19       #pos:I
    .restart local v25       #views:[Landroid/view/View;
    :cond_c
    const/16 v26, 0x0

    goto :goto_4

    .line 939
    .restart local v21       #setView:Z
    .restart local v24       #v:Landroid/view/View;
    :cond_d
    if-eqz v16, :cond_e

    .line 940
    if-nez v21, :cond_10

    .line 941
    if-eqz v15, :cond_f

    move/from16 v26, v22

    :goto_7
    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 945
    :goto_8
    const/16 v21, 0x1

    .line 947
    :cond_e
    move-object/from16 v16, v24

    .line 948
    aget-boolean v15, v17, v19

    goto :goto_6

    :cond_f
    move/from16 v26, v23

    .line 941
    goto :goto_7

    .line 943
    :cond_10
    if-eqz v15, :cond_11

    move/from16 v26, v7

    :goto_9
    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_11
    move/from16 v26, v8

    goto :goto_9

    .line 951
    .end local v24           #v:Landroid/view/View;
    :cond_12
    if-eqz v16, :cond_13

    .line 952
    if-eqz v21, :cond_18

    .line 957
    if-eqz v15, :cond_17

    if-eqz p4, :cond_16

    .end local v6           #bottomMedium:I
    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 968
    .end local v10           #fullBright:I
    :cond_13
    :goto_b
    if-eqz v3, :cond_14

    if-eqz p7, :cond_14

    if-lez v18, :cond_14

    .line 971
    move-object/from16 v0, p7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 995
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 997
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_15

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->setSelection(I)V

    .line 1002
    :cond_15
    return-void

    .restart local v6       #bottomMedium:I
    .restart local v10       #fullBright:I
    :cond_16
    move v6, v4

    .line 957
    goto :goto_a

    :cond_17
    move v6, v5

    goto :goto_a

    .line 960
    :cond_18
    if-eqz v15, :cond_19

    .end local v10           #fullBright:I
    :goto_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b

    .restart local v10       #fullBright:I
    :cond_19
    move v10, v11

    goto :goto_c

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 595
    const/4 v2, 0x1

    .line 596
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 597
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 598
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 599
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020019

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 600
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 610
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 611
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 614
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 622
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001b

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 623
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 639
    if-ne v3, v2, :cond_4

    .line 640
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 648
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 605
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    or-int/2addr v3, v2

    goto :goto_0

    .line 616
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 619
    or-int/2addr v3, v0

    goto :goto_1

    .line 628
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 631
    or-int/2addr v3, v1

    goto :goto_2

    .line 641
    :cond_4
    if-ne v3, v0, :cond_5

    .line 642
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 643
    :cond_5
    if-ne v3, v1, :cond_0

    .line 644
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 648
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x1020260

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 565
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 567
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 592
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 589
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, 0x1020259

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 498
    const/4 v1, 0x1

    .line 500
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 502
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 505
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 508
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 509
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 561
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 511
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 513
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 514
    if-eqz v0, :cond_5

    .line 516
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102025a

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 518
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 537
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 538
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 539
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 540
    :cond_4
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 545
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 549
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 554
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 555
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 20

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102025f

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 419
    .local v3, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v5

    .line 422
    .local v5, hasButtons:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020258

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 423
    .local v2, topPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v11, 0x101005d

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 425
    .local v14, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .line 427
    .local v7, hasTitle:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102025c

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 428
    .local v8, buttonPanel:Landroid/view/View;
    if-nez v5, :cond_0

    .line 429
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 433
    :cond_0
    const/4 v4, 0x0

    .line 434
    .local v4, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020261

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #customPanel:Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 436
    .restart local v4       #customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102002b

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout;

    .line 437
    .local v18, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 442
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 452
    .end local v18           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v7, :cond_4

    .line 453
    const/16 v19, 0x0

    .line 454
    .local v19, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 455
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102025b

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 473
    :goto_1
    if-eqz v19, :cond_4

    .line 474
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    .end local v19           #divider:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/AlertController;->bUseDefaultTheme:Z

    if-nez v1, :cond_9

    .line 480
    const/16 v17, 0x0

    .line 481
    .local v17, cur_dialogUi_id:I
    if-lez v17, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/R$styleable;->AlertDialog:[I

    move/from16 v0, v17

    invoke-virtual {v1, v0, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 483
    .local v6, mArray:Landroid/content/res/TypedArray;
    if-eqz v6, :cond_5

    move-object/from16 v1, p0

    .line 484
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 485
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 494
    .end local v6           #mArray:Landroid/content/res/TypedArray;
    .end local v17           #cur_dialogUi_id:I
    :cond_5
    :goto_2
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 495
    return-void

    .line 446
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020261

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 457
    .restart local v19       #divider:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020262

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    goto :goto_1

    .end local v19           #divider:Landroid/view/View;
    .restart local v17       #cur_dialogUi_id:I
    :cond_8
    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v15, v7

    move-object/from16 v16, v8

    .line 488
    invoke-direct/range {v9 .. v16}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    goto :goto_2

    .end local v17           #cur_dialogUi_id:I
    :cond_9
    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v15, v7

    move-object/from16 v16, v8

    .line 491
    invoke-direct/range {v9 .. v16}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    goto :goto_2
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 189
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 190
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103f4

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 192
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_0

    .line 403
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 397
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 401
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .parameter "attrId"

    .prologue
    .line 381
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 382
    .local v0, out:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 383
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 260
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 265
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 266
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 325
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 329
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 333
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 349
    :goto_0
    return-void

    .line 337
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 338
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 342
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 343
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 280
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 357
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 358
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 359
    if-lez p1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    if-nez p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 369
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 388
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 295
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 304
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 305
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 306
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 307
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 308
    return-void
.end method

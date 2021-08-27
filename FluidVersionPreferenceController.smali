.class public Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FluidVersionPreferenceController.java"


# instance fields
.field mBatteryText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mCpuText:Landroid/widget/TextView;

.field mDeviceNameText:Landroid/widget/TextView;

.field mFluidVersionFlavourText:Landroid/widget/TextView;

.field private mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field mFluidVersionText:Landroid/widget/TextView;

.field private mHost:Landroidx/preference/PreferenceFragmentCompat;

.field mMaintainerText:Landroid/widget/TextView;

.field mRamText:Landroid/widget/TextView;

.field mScreenResText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private UpdateFluidVersionPreference()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->updateDeviceNameText()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->updateCpuText()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->updateScreenResText()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->updateBatteryText()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->updateRamText()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->updateMaintainerText()V

    return-void
.end method

.method private updateBatteryText()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mBatteryText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/FluidSpecUtils;->getBatteryCapacity(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " mAh"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCpuText()V
    .locals 1

    .line 126
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mCpuText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/utils/FluidSpecUtils;->getProcessorModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDeviceNameText()V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mDeviceNameText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/utils/FluidSpecUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMaintainerText()V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mMaintainerText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/utils/FluidSpecUtils;->getMaintainerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRamText()V
    .locals 2

    .line 134
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mRamText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/utils/FluidSpecUtils;->getTotalRAM()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateScreenResText()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mScreenResText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/FluidSpecUtils;->getScreenRes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 79
    sget v0, Lcom/android/settings/R$id;->fluid_version:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionText:Landroid/widget/TextView;

    .line 80
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->fluid_version_flavour:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionFlavourText:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->device_name_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mDeviceNameText:Landroid/widget/TextView;

    .line 82
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->device_cpu_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mCpuText:Landroid/widget/TextView;

    .line 83
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->device_screen_res_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mScreenResText:Landroid/widget/TextView;

    .line 84
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->device_battery_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mBatteryText:Landroid/widget/TextView;

    .line 85
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->device_ram_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mRamText:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mFluidVersionLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->device_maintainer_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mMaintainerText:Landroid/widget/TextView;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->UpdateFluidVersionPreference()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public setFragment(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/FluidVersionPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

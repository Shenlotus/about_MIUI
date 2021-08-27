# about_MIUI

Guide simple aboutphone like miui & fluid

DC settings.apk

Masukan bahan sesuai tempat nya

1. tambah kan di values/colors.xml

    <color name="fluid_version_border_color">#ffe6e6e6</color>

    values-night/colors.xml

    <color name="fluid_version_border_color">#ff242424</color>

2. buka res/xml/my_device_info.xml tambah kan ini

    <com.android.settingslib.widget.LayoutPreference android:layout="@layout/fluid_version" android:layout_height="fill_parent" android:selectable="false" android:key="fluid_version" android:order="1" settings:controller="com.android.settings.deviceinfo.aboutphone.FluidVersionPreferenceController" />

3. tambahkan di build.prop

ro.nad.maintainer=ʍoǝɯpooɓ

done cocokan id public di R$id.smali

Notes

untuk rom selain nusantara jika unknown bisa ubah bagian di smali bagian ro.blabla sesuai rom masing²

Credit :
MIUI
Fluid os
mbah google
github
all member @anubareng

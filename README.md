# ResponsiveRow

This lib is able to generate adaptive layouts according to the device size

<p align="center">
    <img src="https://github.com/welitonsousa/responsive_row/raw/main/assets/gif/responsive.gif" height="500"/>
</p>


## - Examples

```dart
// ResponsiveRow
ResponsiveRow(
  alignment: WrapAlignment.spaceBetween,
  children: [
    ResponsiveCol(
      lg: Sizes.col3,  //optional field
      md: Sizes.col6,  //optional field
      sm: Sizes.col12, //optional field
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
        color: Colors.green,
      ),
    )
  ],
),
```

```dart
// ResponsiveRow.builder
ResponsiveRow.builder(
  itemCount: 10,
  itemBuilder: (index) {
    return ResponsiveCol(
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
        color: Colors.red,
      ),
    );
  },
),
```



<br>
<p align="center">
   Feito com ❤️ by <b>welitonsousa</b>
</p>


---
order: 1
title: Конфигурация
---

Файл настроек программы `detector-gpio` находится по пути `/etc/detector/detector.conf`

:::info 

Файл настроек появляется после запуска программы `detector-gpio`

:::

## Формат файла настроек

Файл имеет упрощенный формат *conf:*

```ini
# Это коментарий
param_int = 0 # И это коментарий
param_float = 0.0
param_bool = true
param_str_0 = "Строка экранирует 'одинарные' кавычки"
param_str_1 = 'Строка экранирует "двойные" кавычки'
```

Из примера выше становится понятно, что каждый параметр определяется на отдельной строке в виде `key = value`. Коментарии определяются после `#` в любом месте.

### Типы данных параметров

-  строка `[str]` - `"data"` или `'data'`

-  число `[num]` - `0.0`

-  булево `[bool]` - `true` или `false`

## Параметры

{% table header="row" %}

---

*  {% colwidth=[169] %}

   Параметр

*  {% colwidth=[137] align="center" %}

   Тип данных

*  {% colwidth=[143] align="center" %}

   Значение по умолчанию

*  {% colwidth=[337] %}

   Описание

---

*  {% colwidth=[169] %}

   `EmaEnable`

*  {% colwidth=[137] align="center" %}

   `bool`

*  {% colwidth=[143] align="center" %}

   `true`

*  {% colwidth=[337] %}

   Включение динамического порога

---

*  {% colwidth=[169] %}

   `Threshold`

*  {% colwidth=[137] align="center" %}

   `num`

*  {% colwidth=[143] align="center" %}

   `0.2`

*  {% colwidth=[337] %}

   Cтатический порог в вольтах. Используется только при `EmaEnable = false`

---

*  {% colwidth=[169] %}

   `EmaReaction`

*  {% colwidth=[137] align="center" %}

   `num`

*  {% colwidth=[143] align="center" %}

   `0.02`

*  {% colwidth=[337] %}

   Настройка динамического порога `EMA`: `EMA = EmaReaction * Xn + (1 - (2 / (EmaWindow + 1) * EMA(n-1))`. Кэфициент нарастания порога. Чем больше, тем быстрее нарастает порог, тем больше пиков будем пропускать. Используется только при `EmaEnable = true`

---

*  {% colwidth=[169] %}

   `EmaWindow`

*  {% colwidth=[137] align="center" %}

   `num`

*  {% colwidth=[143] align="center" %}

   `125`

*  {% colwidth=[337] %}

   Длинна окна анализа порога. Чем длиннее окно, тем медленнее реакция на изменения (больше пиков пропустим)

---

*  {% colwidth=[169] %}

   `PPSRequired`

*  {% colwidth=[137] align="center" %}

   `bool`

*  {% colwidth=[143] align="center" %}

   `true`

*  {% colwidth=[337] %}

   Требуется ли синхронизация по PPS. Захват сигналов не будет начат, пока модуль GPS не синхронизируется со спутниками

---

*  {% colwidth=[169] %}

   `DefaultLongitude`

*  {% colwidth=[137] align="center" %}

   `num`

*  {% colwidth=[143] align="center" %}

   `0.0`

*  {% colwidth=[337] %}

   Значение долготы по умолчанию. Используется, когда синхронизация по GPS не выполнена, или выполнена не полностью

---

*  {% colwidth=[169] %}

   `DefaultLatitude`

*  {% colwidth=[137] align="center" %}

   `num`

*  {% colwidth=[143] align="center" %}

   `0.0`

*  {% colwidth=[337] %}

   Значение широты по умолчанию. Используется, когда синхронизация по GPS не выполнена, или выполнена не полностью

---

*  {% colwidth=[169] %}

   `DefaultAltitude`

*  {% colwidth=[137] align="center" %}

   `num`

*  {% colwidth=[143] align="center" %}

   `0.0`

*  {% colwidth=[337] %}

   Значение высоты над уровнем моря (`HAE`) по умолчанию. Используется, когда синхронизация по GPS не выполнена, или выполнена не полностью

{% /table %}

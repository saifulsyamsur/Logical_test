<?php
foreach (range(1, 50) as $number) {
  if ($number % 3 != 0 && $number % 5 != 0) {
    echo $number . '<br>';
    continue;
  }
  if ($number % 3 == 0) echo 'Foo';
  if ($number % 5 == 0) echo 'Bar';
  echo '<br>';
}

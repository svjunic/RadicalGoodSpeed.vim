<?php
declare(strict_types=1);

// Simple PHP sample for Neovim highlighting
namespace HighlightSample;

use DateTime;

/**
 * Example class
 */
class Greeter
{
    private string $name;

    public function __construct(string $name = "World")
    {
        $this->name = $name;
    }

    public function greet(): string
    {
        $time = new DateTime();
        return sprintf("Hello, %s! Today is %s.", $this->name, $time->format('Y-m-d'));
    }

    public static function shout(string $msg): void
    {
        echo strtoupper($msg) . PHP_EOL;
    }
}

// Anonymous function and array
$values = [1, 2, 3, 'four' => 4];
$sum = array_reduce($values, function ($carry, $item) {
    return $carry + (int)$item;
}, 0);

// Control structures
if ($sum > 0) {
    foreach ($values as $k => $v) {
        // inline comment
        echo "Key: {$k}, Value: {$v}\n";
    }
} elseif ($sum === 0) {
    echo "No values\n";
} else {
    echo "Negative\n";
}

// Switch
switch (count($values)) {
    case 0:
        echo "empty\n";
        break;
    case 1:
    case 2:
        echo "few\n";
        break;
    default:
        echo "many\n";
}

// Heredoc/Nowdoc
$heredoc = <<<EOT
Multi-line string
With interpolation: {$sum}
EOT;

$nowdoc = <<<'ND'
Nowdoc literal {$sum}
ND;

// Mixed HTML
?>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8"><title>Highlight Sample</title></head>
<body>
    <h1><?= htmlspecialchars((new Greeter("Neovim"))->greet(), ENT_QUOTES, 'UTF-8') ?></h1>
    <pre><?php echo $heredoc; ?></pre>
    <pre><?php echo $nowdoc; ?></pre>
    <?php Greeter::shout("finished"); ?>
</body>
</html>

<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Invoice $invoice
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $invoice->invoiceID],
                ['confirm' => __('Are you sure you want to delete # {0}?', $invoice->invoiceID)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Invoices'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="invoices form large-9 medium-8 columns content">
    <?= $this->Form->create($invoice) ?>
    <fieldset>
        <legend><?= __('Edit Invoice') ?></legend>
        <?php
            echo $this->Form->control('totalPrice');
            echo $this->Form->control('isbn');
            echo $this->Form->control('bookStoreID');
            echo $this->Form->control('stockID');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>

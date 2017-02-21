<html>
<?php echo $this->partial('partials/header'); ?>

<body>

	<div class="body clearfix">

<?php echo $this->tag->form(array('products/search')); ?>

<h2>Search products</h2>

<fieldset>

    <?php foreach ($form as $element) { ?>
        <div class="control-group">
            <?php echo $element->label(array('class' => 'control-label')); ?>
            <div class="controls"><?php echo $element; ?></div>
        </div>
    <?php } ?>

    <div class="control-group">
        <?php echo $this->tag->submitButton(array('Search', 'class' => 'btn btn-primary')); ?>
    </div>

</fieldset>
</div>
<?php echo $this->partial('partials/footer'); ?>

</body>
</html>

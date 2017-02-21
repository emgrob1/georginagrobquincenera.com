<html>
<?php echo $this->partial('/partials/header_sub'); ?>

<body>

	<div class="body clearfix">

<?php $v33698768110324140521iterated = false; ?><?php $v33698768110324140521iterator = $page->items; $v33698768110324140521incr = 0; $v33698768110324140521loop = new stdClass(); $v33698768110324140521loop->length = count($v33698768110324140521iterator); $v33698768110324140521loop->index = 1; $v33698768110324140521loop->index0 = 1; $v33698768110324140521loop->revindex = $v33698768110324140521loop->length; $v33698768110324140521loop->revindex0 = $v33698768110324140521loop->length - 1; ?><?php foreach ($v33698768110324140521iterator as $product) { ?><?php $v33698768110324140521loop->first = ($v33698768110324140521incr == 0); $v33698768110324140521loop->index = $v33698768110324140521incr + 1; $v33698768110324140521loop->index0 = $v33698768110324140521incr; $v33698768110324140521loop->revindex = $v33698768110324140521loop->length - $v33698768110324140521incr; $v33698768110324140521loop->revindex0 = $v33698768110324140521loop->length - ($v33698768110324140521incr + 1); $v33698768110324140521loop->last = ($v33698768110324140521incr == ($v33698768110324140521loop->length - 1)); ?><?php $v33698768110324140521iterated = true; ?>
  <?php if ($v33698768110324140521loop->first) { ?>
    <table>
      <thead>
        <tr>
          <th>Id</th>
          <th>Product Type</th>
          <th>Name</th>
          <th>Price</th>
          <th>Active</th>
        </tr>
      </thead>
    <tbody>
  <?php } ?>
  <tr>
    <td><?php echo $product->id; ?></td>
    <td><?php echo $product->getProductTypes()->name; ?></td>
    <td><?php echo $product->name; ?></td>
    <td><?php echo sprintf('%.2f', $product->price); ?></td>
    <td><?php echo $product->getActiveDetail(); ?></td>
    <td width="7%"><?php echo $this->tag->linkTo(array('products/edit/' . $product->id, 'Edit')); ?></td>
    <td width="7%"><?php echo $this->tag->linkTo(array('products/delete/' . $product->id, 'Delete')); ?></td>
  </tr>
  <?php if ($v33698768110324140521loop->last) { ?>
  </tbody>
    <tbody>
      <tr>
        <td colspan="7">
          <div>
            <?php echo $this->tag->linkTo(array('products/search', 'First')); ?>
            <?php echo $this->tag->linkTo(array('products/search?page=' . $page->before, 'Previous')); ?>
            <?php echo $this->tag->linkTo(array('products/search?page=' . $page->next, 'Next')); ?>
            <?php echo $this->tag->linkTo(array('products/search?page=' . $page->last, 'Last')); ?>
            <span class="help-inline"><?php echo $page->current; ?> of <?php echo $page->total_pages; ?></span>
          </div>
        </td>
      </tr>
    </tbody>
  </table>
  <?php } ?>
<?php $v33698768110324140521incr++; } if (!$v33698768110324140521iterated) { ?>
  No products are recorded
<?php } ?>

</div>
<?php echo $this->partial('partials/footer_sub'); ?>

</body>
</html>
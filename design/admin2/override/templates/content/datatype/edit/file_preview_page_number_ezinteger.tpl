{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{if $attribute.object_version.data_map.file.content.mime_type|eq('application/pdf')}
    <p>PDF preview:<br /><img src={$attribute.object.id|pdfpreview( 99, 99)} alt="PDF preview image" /></p>
{/if}
<p>
    <input class="button" name="StoreButton" value="Preview PDF now"  type="submit">
</p>
{default attribute_base=ContentObjectAttribute}
    <input id="ezcoa-{if ne( $attribute_base, 'ContentObjectAttribute' )}{$attribute_base}-{/if}{$attribute.contentclassattribute_id}_{$attribute.contentclass_attribute_identifier}" class="box ezcc-{$attribute.object.content_class.identifier} ezcca-{$attribute.object.content_class.identifier}_{$attribute.contentclass_attribute_identifier}" type="text" name="{$attribute_base}_data_integer_{$attribute.id}" size="10" value="{$attribute.data_int}" />
{/default}
<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ConferenceControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = static::createClient();
        $client->request('GET', '/');

        //echo $client->getResponse();
        //exit;

        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h2', 'Оставьте отзыв!');
    }

    public function testConferencePage()
    {
        $client  = static::createClient();
        $crawler = $client->request('GET', '/');

        $this->assertCount(2, $crawler->filter('h4'));

        $client->clickLink('Подробнее');

        $this->assertPageTitleContains('Paris');
        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h2', 'Paris 2018');
        $this->assertSelectorExists('div:contains("Для этой конференции пока нет отзывов.")');
    }

    public function testCommentSubmission()
    {
        $client = static::createClient();
        $client->request('GET', '/conference/amsterdam-2019');
        $client->submitForm('Submit', [
            'comment_form[author]' => 'Fabien',
            'comment_form[text]'   => 'Some feedback from an automated functional test',
            'comment_form[email]'  => 'me@authomat.ed',
            'comment_form[photo]'  => dirname(__DIR__, 2) . '/public/images/under-construction.gif',
        ]);
        $this->assertResponseRedirects();
        $client->followRedirect();
        $this->assertSelectorExists('div:contains("Всего 2 отзывов")');
    }
}